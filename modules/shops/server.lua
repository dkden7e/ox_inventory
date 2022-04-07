if not lib then return end

local Items = server.items
local Inventory = server.inventory

local Shops = {}

local locations = shared.qtarget and 'targets' or 'locations'

for shopName, shopDetails in pairs(data('shops')) do
	Shops[shopName] = {}
	if shopDetails[locations] then
		for i = 1, #shopDetails[locations] do
			Shops[shopName][i] = {
				label = shopDetails.name,
				id = shopName..' '..i,
				groups = shopDetails.groups or shopDetails.jobs,
				items = table.clone(shopDetails.inventory),
				slots = #shopDetails.inventory,
				type = 'shop',
				coords = shared.qtarget and shopDetails[locations][i].loc or shopDetails[locations][i]
			}
			for j = 1, Shops[shopName][i].slots do
				local slot = Shops[shopName][i].items[j]
				local Item = Items(slot.name)
				if Item then
					slot = {
						name = Item.name,
						slot = j,
						weight = Item.weight,
						count = slot.count,
						price = (server.randomprices and not currency or currency == 'money') and (math.ceil(slot.price * (math.random(80, 120)/100))) or slot.price,
						metadata = slot.metadata,
						license = slot.license,
						currency = slot.currency,
						grade = slot.grade
					}
					Shops[shopName][i].items[j] = slot
				end
			end
		end
	else
		Shops[shopName] = {
			label = shopDetails.name,
			id = shopName,
			groups = shopDetails.groups or shopDetails.jobs,
			items = shopDetails.inventory,
			slots = #shopDetails.inventory,
			type = 'shop',
		}
		for i = 1, Shops[shopName].slots do
			local slot = Shops[shopName].items[i]
			local Item = Items(slot.name)
			if Item then
				slot = {
					name = Item.name,
					slot = i,
					weight = Item.weight,
					count = slot.count,
					price = (server.randomprices and not currency or currency == 'money') and (math.ceil(slot.price * (math.random(90, 110)/100))) or slot.price,
					metadata = slot.metadata,
					license = slot.license,
					currency = slot.currency,
					grade = slot.grade
				}
				Shops[shopName].items[i] = slot
			end
		end
	end
end

lib.callback.register('ox_inventory:openShop', function(source, data)
	local left, shop = Inventory(source)
	if data then
		shop = data.id and Shops[data.type][data.id] or Shops[data.type]

		if data.type == "admin" and not IsPlayerAceAllowed(source, "command.items") then
			return
		elseif shop.groups then
			local group = server.hasGroup(left, shop.groups)
			if not group then return end
		end

		if shop.coords and #(GetEntityCoords(GetPlayerPed(source)) - shop.coords) > 10 then
			return
		end

		left.open = shop.id
	end

	return {label=left.label, type=left.type, slots=left.slots, weight=left.weight, maxWeight=left.maxWeight}, shop
end)

local table = lib.table
local Log = server.logs

-- http://lua-users.org/wiki/FormattingNumbers
-- credit http://richard.warburton.it
local function comma_value(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

lib.callback.register('ox_inventory:buyItem', function(source, data)
	if data.toType == 'player' then
		if data.count == nil then data.count = 1 end
		local playerInv = Inventory(source)
		local split = playerInv.open:match('^.*() ')
		local shop = split and Shops[playerInv.open:sub(0, split-1)][tonumber(playerInv.open:sub(split+1))] or Shops[playerInv.open]
		local fromData = shop.items[data.fromSlot]
		local toData = playerInv.items[data.toSlot]

		if fromData then
			if fromData.count then
				if fromData.count == 0 or not data.count > fromData.count then
					return false, false, {type = 'error', text = shared.locale('shop_nostock')}
				else
					data.count = fromData.count
				end

			elseif fromData.license and shared.framework == 'esx' and not MySQL:selectLicense(fromData.license, playerInv.owner) then
				return false, false, {type = 'error', text = shared.locale('item_unlicensed')}

			elseif fromData.grade then
				local _, rank = server.hasGroup(playerInv, shop.groups)
				if fromData.grade > rank then
					return false, false, {type = 'error', text = shared.locale('stash_lowgrade')}
				end
			elseif shop.id == "admin" then
				if not IsPlayerAceAllowed(source, "command.items") then
					print("Alguien que no es del staff (" .. GetPlayerName(source) .. " [ID: " .. source .. "]" .. ") ha intentado coger " .. data.count .. "x " .. fromData.name .. " de la tienda del staff")
					return false, false, {type = 'error', text = "No puedes hacer esto"}
				end
			end

			local currency = fromData.currency or 'money'
			local fromItem = Items(fromData.name)

			local result = fromItem.cb and fromItem.cb('buying', fromItem, playerInv, data.fromSlot, shop)
			if result == false then return false end

			local toItem = toData and Items(toData.name)
			local metadata, count = Items.Metadata(playerInv, fromItem, fromData.metadata and table.clone(fromData.metadata) or {}, data.count)
			local price = count * fromData.price

			if toData == nil or (fromItem.name == toItem.name and fromItem.stack and table.matches(toData.metadata, metadata)) then
				local canAfford = Inventory.GetItem(source, currency, false, true) >= price
				if canAfford then
					local newWeight = playerInv.weight + (fromItem.weight + (metadata?.weight or 0)) * count
					if newWeight > playerInv.maxWeight then
						return false, false, {type = 'error', text = shared.locale('cannot_carry')}
					else
						Inventory.SetSlot(playerInv, fromItem, count, metadata, data.toSlot)
						if fromData.count then shop.items[data.fromSlot].count = fromData.count - count end
						playerInv.weight = newWeight
					end

					Inventory.RemoveItem(source, currency, price)
					if shared.framework == 'esx' then Inventory.SyncInventory(playerInv) end
					local message = shared.locale('purchased_for', count, fromItem.label, (currency == 'money' and shared.locale('$') or comma_value(price)), (currency == 'money' and comma_value(price) or ' '..Items(currency).label))

					-- Only log purchases for items worth $500 or more
					if fromData.price >= 500 then

						Log(('%s %s'):format(playerInv.label, message:lower()),
							'buyItem', playerInv.owner, shop.label
						)

					end

					return true, {data.toSlot, playerInv.items[data.toSlot], playerInv.weight}, {type = 'success', text = message}
				else
					return false, false, {type = 'error', text = shared.locale('cannot_afford', ('%s%s'):format((currency == 'money' and shared.locale('$') or comma_value(price)), (currency == 'money' and comma_value(price) or ' '..Items(currency).label)))}
				end
			end
			return false, false, {type = 'error', text = shared.locale('unable_stack_items')}
		end
	end
end)

AddEventHandler('ox_inventory:itemList', function(ItemList)

	local allItemsShop, excluded, step = {}, { money = true, black_money = true }, 0
	repeat
		local temp = {}
		for _, v in pairs(ItemList) do
			if (step == 0 and v.type == "Items" and not excluded[v.name]) or (step == 1 and v.type == "Ammo") or (step == 2 and (v.type == "Components" or string.lower(v.type) == "skin" or string.lower(v.type) == "barrel" or string.lower(v.type) == "sight" or string.lower(v.type) == "magazine" or string.lower(v.type) == "grip")) or (step == 3 and v.type == "Weapons" and not v.throwable and not v.ammo) or (step == 4 and v.type == "Weapons" and v.ammo) or (step == 5 and v.type == "Weapons" and v.throwable) then
				table.insert(temp, v.name )
			end
		end

		table.sort(temp)

		for i = 1, #temp do
			allItemsShop[#allItemsShop+1] = temp[i]
		end

		step += 1
	until step > 5

	Shops['admin'] = {
		label = 'Admin item shop',
		id = 'admin',
		jobs = nil,
		items = allItemsShop,
		slots = #allItemsShop,
		type = 'shop',
	}

	for i=1, Shops['admin'].slots do
		local slot = Shops['admin'].items[i]
		local Item = Items(slot)
		if Item then
			slot = {
				name = Item.name,
				slot = i,
				weight = Item.weight,
				count = slot.count,
				price = 0,
				metadata = slot.metadata,
				license = slot.license,
				currency = slot.currency,
				grade = slot.grade
			}
			Shops['admin'].items[i] = slot
		end
	end

	--[[local res = GetCurrentResourceName()
	for _, v in ipairs(allItemsShop) do
		local name = v.name
		local png = LoadResourceFile(res, "web/build/images/" .. name .. ".png")
		if png then
			--print("^2" .. name)
		else
			print("^1" .. name)
		end
	end]]

	allItemsShop = nil
	Citizen.Wait(0)
	collectgarbage('collect')
end)

server.shops = Shops
