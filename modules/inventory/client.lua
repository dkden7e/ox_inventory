local Inventory = {}

Inventory.Dumpsters = {`prop_dumpster_t`, `prop_cs_dumpster_01a` ,`prop_dumpster_01a`, `prop_dumpster_02a`, `prop_dumpster_02b`, `prop_dumpster_3a`, `prop_dumpster_4a`, `prop_dumpster_4b`, `prop_snow_dumpster_01`, `prop_bin_13a`, `prop_bin_14a`, `prop_bin_14b`}

Inventory.Trashbins = {`prop_bin_01a`, `prop_bin_02a` ,`prop_bin_03a`, `prop_bin_04a`, `prop_bin_05a`, `prop_bin_06a`, `prop_bin_07a`, `prop_bin_07b`, `prop_bin_07c`, `prop_bin_07d`, `prop_bin_08a`, `prop_bin_08open`, `prop_bin_09a`, `prop_bin_10a`, `prop_bin_10b`, `prop_bin_11a`, `prop_bin_11b`, `prop_bin_12a`, `prop_bin_beach_01a`, `prop_bin_beach_01d`, `prop_bin__delpiero`, `prop_bin__delpiero_b`, `zprop_bin_01a_old`, `prop_cs_bin_02`}


if shared.qtarget then
	local function OpenDumpster(entity)
		local netId = NetworkGetEntityIsNetworked(entity) and NetworkGetNetworkIdFromEntity(entity)

		if not netId then
			NetworkRegisterEntityAsNetworked(entity)
			SetEntityAsMissionEntity(entity)
			netId = NetworkGetNetworkIdFromEntity(entity)
			NetworkUseHighPrecisionBlending(netId, false)
			SetNetworkIdExistsOnAllMachines(netId, true)
			SetNetworkIdCanMigrate(netId, true)
		end

		client.openInventory('dumpster', 'dumpster'..netId)
	end


	local function OpenTrashbin(entity)
		local netId = NetworkGetEntityIsNetworked(entity) and NetworkGetNetworkIdFromEntity(entity)

		if not netId then
			NetworkRegisterEntityAsNetworked(entity)
			SetEntityAsMissionEntity(entity)
			netId = NetworkGetNetworkIdFromEntity(entity)
			NetworkUseHighPrecisionBlending(netId, false)
			SetNetworkIdExistsOnAllMachines(netId, true)
			SetNetworkIdCanMigrate(netId, true)
		end

		client.openInventory('trashbin', 'trashbin'..netId)
	end

	exports.qtarget:AddTargetModel(Inventory.Dumpsters, {
		options = {
			{
				icon = 'fas fa-dumpster',
				label = shared.locale('search_dumpster'),
				action = function(entity)
					OpenDumpster(entity)
				end
			},
		},
		distance = 2
	})

	exports.qtarget:AddTargetModel(Inventory.Trashbins, {
		options = {
			{
				icon = 'fas fa-trash',
				label = shared.locale('search_trash'),
				action = function(entity)
					OpenTrashbin(entity)
				end
			},
		},
		distance = 2
	})
end

local table = lib.table

---@param search string|number slots|1, count|2
---@param item table | string
---@param metadata? table | string
function Inventory.Search(search, item, metadata)
	if item then
		if search == 'slots' then search = 1 elseif search == 'count' then search = 2 end
		if type(item) == 'string' then item = {item} end
		if type(metadata) == 'string' then metadata = {type=metadata} end

		local items = #item
		local returnData = {}
		for i = 1, items do
			local item = string.lower(item[i])
			if item:sub(0, 7) == 'weapon_' then item = string.upper(item) end
			if search == 1 then returnData[item] = {}
			elseif search == 2 then returnData[item] = 0 end
			for _, v in pairs(PlayerData.inventory) do
				if v.name == item then
					if not v.metadata then v.metadata = {} end
					if not metadata or table.contains(v.metadata, metadata) then
						if search == 1 then returnData[item][#returnData[item]+1] = PlayerData.inventory[v.slot]
						elseif search == 2 then
							returnData[item] += v.count
						end
					end
				end
			end
		end
		if next(returnData) then return items == 1 and returnData[item[1]] or returnData end
	end
	return false
end
exports('Search', Inventory.Search)

local function openEvidence()
	client.openInventory('policeevidence')
end

Inventory.Evidence = setmetatable(data('evidence'), {
	__call = function(self)
		for _, evidence in pairs(self) do
			if evidence.point then
				evidence.point:remove()
			end

			if client.hasGroup(shared.police) then
				-- if shared.qtarget then
				-- 	if evidence.target then
				-- 		exports.qtarget:RemoveZone(evidence.target.name)
				-- 		exports.qtarget:AddBoxZone(evidence.target.name, evidence.target.loc, evidence.target.length or 0.5, evidence.target.width or 0.5,
				-- 		{
				-- 			name = evidence.target.name,
				-- 			heading = evidence.target.heading or 0.0,
				-- 			debugPoly = false,
				-- 			minZ = evidence.target.minZ,
				-- 			maxZ = evidence.target.maxZ
				-- 		}, {
				-- 			options = {
				-- 				{
				-- 					icon = 'fas fa-warehouse',
				-- 					label = shared.locale('open_police_evidence'),
				-- 					job = shared.police,
				-- 					action = openEvidence
				-- 				},
				-- 			},
				-- 			distance = evidence.target.distance or 2.0
				-- 		})
				-- 	end
				-- else
					local point = lib.points.new(evidence.coords, 16, { inv = 'policeevidence' })

					function point:nearby()
						DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 30, 30, 150, 222, false, false, false, true, false, false, false)

						if self.currentDistance < 1.2 and lib.points.closest().id == self.id and IsControlJustReleased(0, 38) then
							openEvidence()
						end
					end

					evidence.point = point
					evidence.target = nil
				-- end
			end
		end
	end
})

local function OpenStash(data)
	exports[shared.resource]:openInventory('stash', data)
end

Inventory.Stashes = setmetatable(data('stashes'), {
	__call = function(self)
		for id, stash in pairs(self) do
			if stash.jobs then stash.groups = stash.jobs end

			if stash.point then
				stash.point:remove()
			end

			if not stash.groups or client.hasGroup(stash.groups) then
				if shared.qtarget and stash.target then
					exports.qtarget:RemoveZone(stash.name)
					exports.qtarget:AddBoxZone(stash.name, stash.target.loc, stash.target.length or 0.5, stash.target.width or 0.5,
					{
						name = stash.name,
						heading = stash.target.heading or 0.0,
						debugPoly = false,
						minZ = stash.target.minZ,
						maxZ = stash.target.maxZ
					}, {
						options = {
							{
								icon = stash.target.icon or 'fas fa-warehouse',
								label = stash.target.label or shared.locale('open_stash'),
								job = stash.groups,
								action = function()
									OpenStash({id=id})
								end
							},
						},
						distance = stash.target.distance or 3.0
					})
				else
					local point = lib.points.new(stash.coords, 16, { inv = 'stash', invId = id})

					function point:nearby()
						DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 30, 30, 150, 222, false, false, false, true, false, false, false)
					end

					stash.point = point
					stash.target = nil
				end
			end
		end
	end
})

client.inventory = Inventory
