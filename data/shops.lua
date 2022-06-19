QueServer = GetConvar("server_number", "1")
isTencity = (QueServer == "TENCITY")

return {
	General = {
		name = '24/7',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'bread', price = 10 },
			{ name = 'takis', price = 10 },
			{ name = 'gominolas', price = 10 },
			{ name = 'chicles', price = 10 },
			{ name = 'jolly_ranchers', price = 10 },
			{ name = 'bolcacahuetes', price = 10 },
			{ name = 'water', price = 10 },
			{ name = 'drink_sprite', price = 10 },
			{ name = (isTencity and 'cola' or 'cocacola'), price = 25 },
			{ name = 'energy', price = 50 },
			{ name = 'beer', price = 50 },
			{ name = 'phone', price = 500 },
			{ name = 'radio', price = 2000 },
			{ name = 'boombox', price = 1000 },
			{ name = 'tarjeta_transportes', metadata = { usos = 25, registered = true, serial = 'TRANSP' }, price = 750 },
			{ name = 'ocb_paper', price = 15 },
			{ name = 'smoke_filters', price = 20 },
			{ name = 'smoke_grinder', price = 1200 },
			{ name = 'gameboy', price = 1500 },
			{ name = 'cups', price = 200 },
			{ name = 'calculator', price = 500 },
			{ name = 'spray', price = 500 },
            { name = 'notepad', price = 500 },
			{ name = 'WEAPON_FLASHLIGHT', price = 600 },
		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(190.21, -889.55, 30.71),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
			vec3(447.01, -615.77, 28.63),
		}
	},
	
	Tickets = {
		name = 'Tíckets de transporte',
		inventory = {
			{ name = 'tarjeta_transportes', metadata = { usos = 25, registered = true, serial = 'TRANSP' }, price = 550 },
		}, locations = {
			vec3(443.48, -633.49, 28.63),
		}
	},

	Ortopedia = {
		name = 'Ortopedia',
		blip = {
			id = 280, colour = 26, scale = 1.0
		}, inventory = {
			{ name = 'walking_stick', price = 500 },
			{ name = 'crutches', price = 500 },
			{ name = 'wheelchair', price = 5000 },
			{ name = 'stretcher', price = 10000 },
		}, locations = {
			vec3(-172.91, 239.42, 93.19),
		}
	},

	Documentacion = {
		name = 'Puesto de documentación, SAPD',
		inventory = {
			{ name = 'identification', price = 500 },
		}, locations = {
			vec3(450.3394, -989.3448, 30.6896), -- MRPD
			vec3(-439.3803, 6004.5366, 36.6867), -- PALETO
			vec3(1855.6317, 3691.1746, 34.2194), -- SANDY
		}
	},

	Liquor = {
		name = 'Licorería',
		blip = {
			id = 93, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'water', price = 10 },
			{ name = (isTencity and 'cola' or 'cocacola'), price = 25 },
			{ name = 'beer', price = 50 },
			{ name = 'white_wine', price = 150 },
			{ name = 'vodka', price = 150 },
			{ name = 'tequila', price = 200 },
			{ name = 'absinthe', price = 200 },
			{ name = 'gintonic', price = 200 },
			{ name = 'whisky', price = 250 },
			{ name = 'burger', price = 15 },
			{ name = 'cups', price = 200 },
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			--vec3(-1393.409, -606.624, 30.319) -- BAHAMAS
		}
	},

	DKthlon = {
		name = 'DKthlon',
		blip = {
			id = 122, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'skateboard', price = 1000 },
			{ name = 'WEAPON_BAT', price = 1000 },
			{ name = 'WEAPON_GOLFCLUB', price = 1000 },
			{ name = 'WEAPON_BALL', price = 1000 },
		}, locations = {
			vec3(-762.06, -618.04, 30.46),
		}
	},

	YouTool = {
		name = 'Ferretería',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'lockpick', price = 3000 },
			{ name = 'repairkit', price = 3000 },
			{ name = 'neoncontroller', price = 5000 },
			{ name = 'carjack', price = 5000 },
			{ name = 'car_hood', price = 2000 },
			{ name = 'car_trunk', price = 2000 },
			{ name = 'car_door', price = 2000 },
			{ name = 'car_wheel', price = 1500 },
			{ name = 'scrap_metal', price = 1500 },
			{ name = 'electric_scrap', price = 2000 },
			{ name = 'rccar', price = 1500 },
			{ name = 'gameboy', price = 1200 },
			{ name = 'remote', price = 1500 },
			{ name = 'WEAPON_CROWBAR', price = 1000 },
			{ name = 'WEAPON_HAMMER', price = 1000 },
			{ name = 'WEAPON_HATCHET', price = 1000 },
			{ name = 'WEAPON_WRENCH', price = 1000 },
            { name = 'spray', price = 450 },
            { name = 'spray_remover', price = 200 },
            { name = 'notepad', price = 500 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 500 },
			{ name = 'WEAPON_FLASHLIGHT', price = 500 },
			{ name = 'WEAPON_PETROLCAN', price = 1000 },
		}, locations = {
			vec3(2746.1895, 3468.6914, 55.6731),
			vec3(342.99, -1298.26, 32.51)
		}
	},

	MechYouTool = {
		name = 'Repuestos mecánicos',
		groups = shared.mechanics,
		blip = {
			id = 402, colour = 40, scale = 0.8
		}, inventory = {
			{ name = 'lockpick', price = 500 },
			{ name = 'repairkit', price = 1500 },
			{ name = 'advrepairkit', price = 2500 },
			{ name = 'neoncontroller', price = 2500 },
			{ name = 'neonbox', price = 12000 },
			{ name = 'carjack', price = 2500 },
			{ name = 'car_hood', price = 150 },
			{ name = 'car_trunk', price = 150 },
			{ name = 'car_door', price = 120 },
			{ name = 'car_wheel', price = 150 },
			{ name = 'scrap_metal', price = 60 },
			{ name = 'rubber', price = 50 },
			{ name = 'plastic', price = 50 },
			{ name = 'electric_scrap', price = 50 },
			{ name = 'glass', price = 50 },
			{ name = 'aluminium', price = 75 },
			{ name = 'copper', price = 75 },
			{ name = 'steel', price = 75 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 200 },
		}, locations = {
			vec3(2749.6907, 3476.9788, 55.6734),
			vec3(340.5946, -1297.3885, 32.5105),
			vec3(255.3045, -3057.5806, 5.7919)
		}
	},

	Ammunation = {
		name = 'Armería',
		blip = {
			id = 110, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'WEAPON_KNUCKLE', price = 1500 },
			{ name = 'WEAPON_KNIFE', price = 5000 },
			{ name = 'WEAPON_FLARE', price = 250 },
			{ name = 'ammo-9', price = 99999999, },
--			{ name = 'WEAPON_KNIFE', price = 200 },
--			{ name = 'WEAPON_BAT', price = 100 },
			{ name = 'WEAPON_PISTOL', price = 9999999, metadata = { registered = true }, license = 'weapon' },
			{ name = 'WEAPON_FLASHLIGHT', price = 400 },
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(810.25, -2157.60, 29.62),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19)
		}
	},

	PoliceArmoury = {
		name = 'Armería Policial',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.8
		}, inventory = {
			{ name = 'bandage', price = 50 },
			{ name = 'medikit', price = 500 },
			{ name = 'armour', price = 500 },
			{ name = 'radio', price = 1000 },
			{ name = 'ammo-9', price = 5, license = 'weapon'},
			{ name = 'ammo-45', price = 7, license = 'weapon', grade = 3 },
			{ name = 'ammo-shotgun', price = 50, license = 'weapon', grade = 5 },
			{ name = 'ammo-rifle', price = 20, license = 'weapon', grade = 6 },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'at_flashlight', price = 200, license = 'weapon', grade = 0 },
			{ name = 'at_clip_extended_pistol', price = 800, license = 'weapon', grade = 3 },
			{ name = 'at_clip_extended_shotgun', price = 1500, license = 'weapon', grade = 6 },
			{ name = 'at_clip_extended_rifle', price = 3000, license = 'weapon', grade = 7 },
			{ name = 'at_clip_drum_rifle', price = 5000, license = 'weapon', grade = 8 },
			{ name = 'at_scope_small', price = 1200, license = 'weapon', grade = 5 },
			{ name = 'at_scope_medium', price = 2500, license = 'weapon', grade = 6 },
			{ name = 'at_scope_advanced', price = 8000, license = 'weapon', grade = 8 },
			{ name = 'at_compensator', price = 1000, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} },
			{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_G17', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_HEAVYPISTOL', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_PUMPSHOTGUN', price = 10000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 5 },
			{ name = 'WEAPON_CARBINERIFLE', price = 15000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 6 },
			{ name = 'WEAPON_SMOK2GRENADE', price = 200, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_FLASHBANG', price = 10000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 7 },
			{ name = 'WEAPON_SMOKEGRENADE', price = 10000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 7 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 100 },
		}, locations = {
			vec3(486.1490, -995.8393, 30.6898), -- MRPD
			vec3(-430.4039, 5999.2310, 31.7165), -- PALETO LSSD
			vec3(1860.01, 3692.68, 34.2270), -- SANDY LSSD
		}
	},

	PoliceArmoury2 = {
		name = 'Armería FIB',
		groups = {
			['justice'] = 0,
			['fib'] = 0
		},
		blip = {
			id = 110, colour = 84, scale = 0.8
		}, inventory = {
			{ name = 'bandage', price = 50 },
			{ name = 'medikit', price = 500 },
			{ name = 'armour', price = 500 },
			{ name = 'radio', price = 1000 },
			{ name = 'ammo-9', price = 5, license = 'weapon'},
			{ name = 'ammo-45', price = 7, license = 'weapon', grade = 3 },
			{ name = 'ammo-shotgun', price = 50, license = 'weapon', grade = 3 },
			{ name = 'ammo-rifle', price = 20, license = 'weapon', grade = 6 },
			{ name = 'ammo-heavysniper', price = 250, license = 'weapon', grade = 9 },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'at_flashlight', price = 200, license = 'weapon', grade = 0 },
			{ name = 'at_clip_extended_pistol', price = 800, license = 'weapon', grade = 3 },
			{ name = 'at_clip_extended_shotgun', price = 1500, license = 'weapon', grade = 6 },
			{ name = 'at_clip_extended_rifle', price = 3000, license = 'weapon', grade = 7 },
			{ name = 'at_clip_drum_rifle', price = 5000, license = 'weapon', grade = 8 },
			{ name = 'at_scope_small', price = 1200, license = 'weapon', grade = 5 },
			{ name = 'at_scope_medium', price = 2500, license = 'weapon', grade = 6 },
			{ name = 'at_scope_advanced', price = 8000, license = 'weapon', grade = 8 },
			{ name = 'at_compensator', price = 1000, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'FIB'} },
			{ name = 'WEAPON_G17', price = 500, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_HEAVYPISTOL', price = 1000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = "WEAPON_PISTOL_MK2", price = 500, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = "WEAPON_COMBATPISTOL", price = 500, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = "WEAPON_PUMPSHOTGUN_MK2", price = 5000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = "WEAPON_CARBINERIFLE_MK2", price = 5000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 3 },
			{ name = "WEAPON_HEAVYSHOTGUN", price = 50000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 9 },
			{ name = "WEAPON_HEAVYSNIPER_MK2", price = 80000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 9 },
			{ name = 'WEAPON_SMOK2GRENADE', price = 200, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_FLASHBANG', price = 10000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 7 },
			{ name = 'WEAPON_SMOKEGRENADE', price = 10000, metadata = { registered = true, serial = 'FIB' }, license = 'weapon', grade = 7 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 100 },
		}, locations = {
			vec3(28.48, -935.52, 29.9), -- FIB
		}
	},

	Medicine = {
		name = 'Taquilla de medicinas',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'bandage', price = 5 },
			{ name = 'medikit', price = 26 },
			{ name = 'wheelchair', price = 500 },
			{ name = 'stretcher', price = 1500 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 100 },
		}, locations = {
			vec3(306.3687, -601.5139, 43.28406)
		}
	},

	Weed = (isTencity and {
		name = 'Tienda de productos de cultivo',
		blip = {
			id = 469, colour = 2, scale = 0.5
		},
		inventory = {
			{ name = 'wateringcan', price = 100 },
			{ name = 'wateringcan', price = 100, currency = 'black_money' },
			{ name = 'plantpot', price = 100 },
			{ name = 'plantpot', price = 100, currency = 'black_money' },
			{ name = 'lowgradefert', price = 100 },
			{ name = 'lowgradefert', price = 100, currency = 'black_money' },
			{ name = 'highgradefert', price = 200 },
			{ name = 'highgradefert', price = 200, currency = 'black_money' },
			{ name = 'drugscales', price = 2500 },
			{ name = 'drugscales', price = 2500, currency = 'black_money' },
			{ name = 'ziplock', price = 20 },
			{ name = 'ziplock', price = 20, currency = 'black_money' },
			{ name = 'seed_weed', price = 300 },
			{ name = 'seed_weed', price = 300, currency = 'black_money' },
		}, locations = {
			vec3(2195.4587, 5603.1563, 53.5654)
		}
	} or {
		name = 'Tienda de productos de cultivo',
		blip = {
			id = 469, colour = 2, scale = 0.5
		},
		inventory = {
			{ name = 'wateringcan', price = 200 },
			{ name = 'wateringcan', price = 200, currency = 'black_money' },
			{ name = 'plantpot', price = 75 },
			{ name = 'plantpot', price = 75, currency = 'black_money' },
			{ name = 'lowgradefert', price = 20 },
			{ name = 'lowgradefert', price = 20, currency = 'black_money' },
			{ name = 'highgradefert', price = 60 },
			{ name = 'highgradefert', price = 60, currency = 'black_money' },
			{ name = 'drugscales', price = 2000 },
			{ name = 'drugscales', price = 2000, currency = 'black_money' },
			{ name = 'ziplock', price = 10 },
			{ name = 'ziplock', price = 10, currency = 'black_money' },
			{ name = 'seed_weed', price = 300 },
			{ name = 'seed_weed', price = 300, currency = 'black_money' },
			{ name = 'WEAPON_KNIFE', price = 5000 },
			{ name = 'WEAPON_KNIFE', price = 5000, currency = 'black_money' },
		}, locations = {
			vec3(2195.4587, 5603.1563, 53.5654)
			--vec3(-38.756, 1908.21, 195.28)
		}
	}),

	Weed2 = (isTencity and {
		name = '',
		inventory = {
		}, locations = {
		}
	} or {
		name = 'SMOKE ON THE WATER',
		blip = {
			id = 469, colour = 2, scale = 0.75
		},
		inventory = {
			{ name = 'wateringcan', price = 200 },
			{ name = 'plantpot', price = 75 },
			{ name = 'lowgradefert', price = 20 },
			{ name = 'highgradefert', price = 60 },
			{ name = 'drugscales', price = 2000 },
			{ name = 'ziplock', price = 10 },
			{ name = 'seed_weed', price = 300 },
			{ name = 'ocb_paper', price = 10 },
			{ name = 'smoke_grinder', price = 1000 },
		}, locations = {
			vec3(-1169.0750, -1572.7281, 4.6636)
		}
	}),

	HuntingStore = {
		name = 'Bayview Lodge (tienda de caza)',
		blip = {
			id = 141, colour = 31, scale = 0.8
		}, inventory = {
			{ name = 'WEAPON_KNIFE', price = 500--[[, currency = 'bank']] },
			{ name = 'WEAPON_FLASHLIGHT', price = 200--[[, currency = 'bank']] },
			{ name = 'radio', price = 800--[[, currency = 'bank']] },
			{ name = 'ammo-shotgun', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'ammo-flare', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'WEAPON_FLARE', price = 250--[[, currency = 'bank']] },
			{ name = 'WEAPON_FLAREGUN', price = 99999999, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'WEAPON_DOUBLEBARRELFM', price = 999999999, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_dbshotgunfm_barrel2', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_dbshotgunfm_barrel3', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_dbshotgunfm_barrel4', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_dbshotgunfm_barrel5', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'WEAPON_M700', price = 999999999, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_suppressor_medium2', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_clip_extended_sniper', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
			{ name = 'at_scope_zoom', price = 99999999, license = 'weapon'--[[, currency = 'bank']] },
		}, locations = {
			vec3(-675.66, 5836.44, 17.34),
		}
	},
	
	--HuntingStore = {
		--name = 'Bayview Lodge (tienda de caza)',
		--blip = {
			--id = 762, colour = 31, scale = 0.8
		--}, inventory = {
			--{ name = 'bandage', price = 50 },
			--{ name = 'medikit', price = 500 },
			--{ name = 'WEAPON_KNIFE', price = 500 },
			--{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			--{ name = 'radio', price = 800 },
			--{ name = 'ammo-shotgun', price = 50, license = 'weapon' },
			--{ name = 'ammo-flare', price = 200, license = 'weapon' },
			--{ name = 'WEAPON_FLARE', price = 250 },
			--{ name = 'WEAPON_FLAREGUN', price = 2500, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon' },
			--{ name = 'WEAPON_DOUBLEBARRELFM', price = 5000, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon' },
			--{ name = 'at_dbshotgunfm_barrel2', price = 5000, license = 'weapon' },
			--{ name = 'at_dbshotgunfm_barrel3', price = 4000, license = 'weapon' },
			--{ name = 'at_dbshotgunfm_barrel4', price = 3000, license = 'weapon' },
			--{ name = 'at_dbshotgunfm_barrel5', price = 2000, license = 'weapon' },
		--}, locations = {
			--vec3(-675.66, 5836.44, 17.34),
		--}
	--},

	--BlackMarketArms = {
	--	name = 'Black Market (Arms)',
	--	inventory = {
	--		{ name = 'WEAPON_DAGGER', price = 5000, metadata = { registered = false	}, currency = 'black_money' },
	--		{ name = 'WEAPON_CERAMICPISTOL', price = 50000, metadata = { registered = false }, currency = 'black_money' },
	--		{ name = 'at_suppressor_light', price = 50000, currency = 'black_money' },
	--		{ name = 'ammo-rifle', price = 1000, currency = 'black_money' },
	--		{ name = 'ammo-rifle2', price = 1000, currency = 'black_money' }
	--	}, locations = {
	--		vec3(309.09, -913.75, 56.46)
	--	}
	--},

    VendingMachineDrinks = {
        name = 'Maquina expendedora (Bebida)',
		isVending = true,
        inventory = {
            { name = 'water', price = 10 },
            { name = 'fanta', price = 10 },
            { name = 'cocacola', price = 10 },
            { name = 'energy', price = 10 },
            { name = 'redbull', price = 10 },
        },
        model = {
            `prop_vend_soda_02`, `prop_vend_soda_01`
        }
    },

    VendingMachineWater = {
        name = 'Maquina expendedora (Agua)',
		isVending = true,
        inventory = {
            { name = 'water', price = 10 }
        },
        model = {
            `prop_vend_water_01`
        }
    },

    VendingMachineCoffe = {
        name = 'Maquina expendedora (Cafe)',
		isVending = true,
        inventory = {
            { name = 'water', price = 10 },
            { name = 'coffe', price = 10 },
            { name = 'coffebean', price = 10 },
            { name = 'frappuccinobean', price = 10 },
            { name = 'milk', price = 10 },
        },
        model = {
            `prop_vend_coffe_01`
        }
    },

    VendingMachineGumballs = {
        name = 'Maquina expendedora (Gominolas)',
		isVending = true,
        inventory = {
            { name = 'gominolas', price = 10 },
        },
        model = {
            `prop_gumball_01`, `prop_gumball_02`, `prop_gumball_03`
        }
    },

    VendingMachineSnacks = {
        name = 'Maquina expendedora (Snacks)',
		isVending = true,
        inventory = {
            { name = 'anacardos', price = 10 },
            { name = 'gominolas', price = 10 },
            { name = 'bolcacahuetes', price = 10 },
            { name = 'chocolate', price = 10 },
            { name = 'chips', price = 10 },
            { name = 'sandwichbean', price = 10 },
            { name = 'sandwichhot', price = 10 },
            { name = 'cupcakebean', price = 10 },
            { name = 'chicles', price = 10 },
            { name = 'donutbean', price = 10 },
            { name = 'jusfruit', price = 10 },
            { name = 'water', price = 10 },
            { name = 'coffe', price = 10 },
            { name = 'fanta', price = 10 },
            { name = 'cocacola', price = 10 },
            { name = 'energy', price = 10 },
            { name = 'redbull', price = 10 },
        },
        model = {
            `prop_vend_snak_01`, `prop_vend_snak_01_tu`
        }
    },

    VendingMachineWatercooler = {
        name = 'Dispensador de agua',
		isVending = true,
        inventory = {
            { name = 'water', price = 10 },
        },
        model = {
            `prop_watercooler`, `prop_water_cooler_dark`
        }
    },

    VendingMachineNewspaper = {
        name = 'Dispensador de periódicos',
		isVending = true,
        inventory = {
            { name = 'comic_book_1', price = 10 },
            { name = 'comic_book_2', price = 10 },

        },
        model = {
            `prop_news_disp_01a`, `prop_news_disp_02a`, `prop_news_disp_02a_s`, `prop_news_disp_02b`, `prop_news_disp_02c`, `prop_news_disp_02d`, `prop_news_disp_02e`, `prop_news_disp_03a`, `prop_news_disp_03c`, `prop_news_disp_05a`, `prop_news_disp_06a`
        }
    },

    VendingMachineTobacco = {
        name = 'Maquina de tabaco',
		isVending = true,
        inventory = {
            { name = 'cigarett', price = 10 },
        },
        model = {
            `prop_vend_fags_01`
        }
    },

	OneTravel = {
		name = 'OneTravel',
		groups = {
			['onetravel'] = 0
		}, inventory = {
            { name = 'ot_ticket_premium', price = 50 },
            { name = 'ot_ticket_privado', price = 50 },
            { name = 'ot_ticket_normal', price = 50 },
            { name = 'ot_ticket_unuso', price = 50 },
            { name = 'ot_ticket', price = 50 },
            { name = 'ot_card', price = 50 },
            { name = 'ot_cupon10', price = 50 },
            { name = 'ot_cupon15', price = 50 },
            { name = 'ot_cupon25', price = 50 },
            { name = 'cups', price = 50 },
            { name = 'firework', price = 50 },
            { name = 'fireworks', price = 50 },
            { name = 'parachute', price = 50 },
            { name = 'WEAPON_FLARE', price = 50 },
            { name = 'spray', price = 300 },
            { name = 'spray_remover', price = 300 },
            { name = 'boombox', price = 50 },
            { name = 'notepad', price = 50 },
            { name = 'skateboard', price = 50 },
            { name = 'dados', price = 50 },
            { name = 'megaphone', price = 50 },
            { name = 'camara', price = 50 },
            { name = 'gameboy', price = 50 },
            { name = 'calculator', price = 50 },
            { name = 'binoculars', price = 50 },
            { name = 'water', price = 50 },
            { name = 'coffe', price = 50 },
            { name = 'cocacola', price = 50 },
            { name = 'zumo_fruta', price = 50 },
            { name = 'fanta', price = 50 },
            { name = 'sandwich', price = 50 },
            { name = 'sandwichbean', price = 50 },
            { name = 'sandwichhot', price = 50 },
            { name = 'oreo', price = 50 },
            { name = 'ot_llave1', price = 50 },
            { name = 'ot_llave2', price = 50 },
		}, locations = {
			vec3(-150.0, -634.4, 168.82),
		}
	},

	Logistics = { -- nombre interno, da igual cuál sea, no se ve en ningún sitio
	name = (isTencity and "Suministros Chona" or "Teddi Logistics Co."), -- nombre visible de la tienda (al abrirla y en el mapa)
	groups = {["admin"] = 0, ["logistics"] = 0}, -- grupos que pueden abrir la tienda
	blip = { -- marca en el mapa, OPCIONAL, si no quieres que salga se puede quitar 
		id = 59, colour = 69, scale = 0.8 -- id es el iconito, colour el color y scale el tamaño, +info en: https://docs.fivem.net/docs/game-references/blips/
	}, inventory = {
		{ name = 'burger', price = 5 }, -- nombre interno del ítem y precio
		{ name = 'long', price = 100 },
		{ name = 'sandwichhot', price = 10 }, 
		{ name = 'latte_cappuccino', price = 30 },
		{ name = 'whiskey', price = 100 }, 
		{ name = 'monster', price = 25 }, 
		{ name = 'vinoafrutado', price = 100 }, 
		{ name = 'papas_arrugadas', price = 100 },
		{ name = 'mojoverde', price = 15 },
		{ name = 'escaldon', price = 50 },
		{ name = 'cupcake', price = 10 },
		{ name = 'taco', price = 50 },
		{ name = 'sexbeach', price = 120 },
		{ name = 'tofu', price = 150 },
		{ name = 'queque', price = 40 },
		{ name = 'polvito_uruguayo', price = 60 },
		{ name = 'burritofarmer', price = 60 },
		{ name = 'carne_fiesta', price = 100 },
		{ name = 'limonade', price = 10 },
		{ name = 'whisky', price = 100 },
		{ name = 'quesadilla', price = 50 },
		{ name = 'absinthe', price = 75 },
		{ name = 'mimosa', price = 120 },
		{ name = 'tamal', price = 50 },
		{ name = 'quesadillas', price = 75 },
		{ name = 'bolnoixcajou', price = 5 },
		{ name = 'arepa', price = 50 },
		{ name = 'roncoke', price = 100 },
		{ name = 'bienmesabe', price = 60 },
		{ name = 'virgin', price = 120 },
		{ name = 'gominolas', price = 5 },
		{ name = 'costillas', price = 100 },
		{ name = 'chocolate', price = 5 },
		{ name = 'quesofrito', price = 75 },
		{ name = 'baconfries', price = 75 },
		{ name = 'caipirinafresa', price = 120 },
		{ name = 'cubalibre', price = 100 },
		{ name = 'ron', price = 100 },
		{ name = 'pan', price = 5 },
		{ name = 'fernetcoca', price = 120 },
		{ name = 'heladobean', price = 50 },
		{ name = 'almogrote', price = 75 },
		{ name = 'vieja_plancha', price = 120 },
		{ name = 'batidoproteinas', price = 75 },
		{ name = 'queso_asado', price = 75 },
		{ name = 'powerade', price = 25 },
		{ name = 'donut', price = 10 },
		{ name = 'orgasmo_vamila', price = 150 },
		{ name = 'manhattan', price = 120 },
		{ name = 'cubata', price = 100 },
		{ name = 'brownie', price = 10 },
		{ name = 'cerdoagridulce', price = 150 },
		{ name = 'zumofresa', price = 10 },
		{ name = 'ovocny', price = 120 },
		{ name = 'paella_marisco', price = 75 },
		{ name = 'botellawhisky', price = 100 },
		{ name = 'gintonic', price = 120 },
		{ name = 'tostados', price = 150 },
		{ name = 'rebanadapizza', price = 100 },
		{ name = 'meloun', price = 10 },
		{ name = 'medialuna', price = 10 },
		{ name = 'icetea', price = 50 },
		{ name = 'tresleches', price = 75 },
		{ name = 'carnecabra', price = 150 },
		{ name = 'botellaron', price = 100 },
		{ name = 'botellavino', price = 150 },
		{ name = 'kalimotxo', price = 50 },
		{ name = 'water', price = 5 }, 
		{ name = 'matacitron', price = 100 },
		{ name = 'papasarrugadas', price = 150 },
		{ name = 'fernet', price = 75 },
		{ name = 'vasocerveza', price = 75 },
		{ name = 'vasoagua', price = 5 },
		{ name = 'polvitouruguayo', price = 50 },
		{ name = 'ensalada', price = 100 },
		{ name = 'zumo_fruta', price = 10 },
		{ name = 'pocima', price = 120 },
		{ name = 'tequemos', price = 50 },
		{ name = 'caipirina', price = 120 },
		{ name = 'vasotequila', price = 75 },
		{ name = 'whiscola', price = 100 },
		{ name = 'bread', price = 20 },
		{ name = 'principealberto', price = 50 },
		{ name = 'tartamaracuya', price = 50 },
		{ name = 'quesadillamex', price = 50 },
		{ name = 'cervezasin', price = 75 },
		{ name = 'calamares_romana', price = 100 },
		{ name = 'takishot', price = 5 },
		{ name = 'solomillo', price = 150 },
		{ name = 'rollitos', price = 100 },
		{ name = 'sandwichbean', price = 15 },
		{ name = 'waffles', price = 50 },
		{ name = 'lasagna', price = 100 },
		{ name = 'cookie_chips', price = 15 },
		{ name = 'sopafideos', price = 100 },
		{ name = 'batidochocolate', price = 10 },
		{ name = 'vodka', price = 100 },
		{ name = 'batidoplatano', price = 10 },
		{ name = 'cappuccino', price = 15 },
		{ name = 'wine', price = 80 },
		{ name = 'botellatequila', price = 100 },
		{ name = 'heladofrito', price = 50 },
		{ name = 'durum', price = 75 },
		{ name = 'energy', price = 25 },
		{ name = 'empanadarellena', price = 100 },
		{ name = 'botellajagger', price = 120 },
		{ name = 'batido', price = 10 },
		{ name = 'chococaliente', price = 20 },
		{ name = 'barritaener', price = 50 },
		{ name = 'champagne', price = 200 },
		{ name = 'mojorojo', price = 15 },
		{ name = 'patatasfritas', price = 75 },
		{ name = 'frappuccinobean', price = 20 },
		{ name = 'cosmopolitan', price = 100 },
		{ name = 'bombones', price = 50 },
		{ name = 'hongdou', price = 50 },
		{ name = 'redbull', price = 25 },
		{ name = 'milk', price = 10 },
		{ name = 'nachosmex', price = 50 },
		{ name = 'chips', price = 5 },
		{ name = 'cupcakebean', price = 15 },
		{ name = 'ananas', price = 75 },
		{ name = 'sangria', price = 75 },
		{ name = 'wantan', price = 150 },
		{ name = 'arroztres', price = 100 },
		{ name = 'cocoloco', price = 75 },
		{ name = 'longla', price = 120 },
		{ name = 'pastelluna', price = 50 },
		{ name = 'oreo', price = 20 },
		{ name = 'bistec', price = 200 },
		{ name = 'platanos', price = 10 },
		{ name = 'moussemango', price = 60 },
		{ name = 'rhumcoca', price = 100 },
		{ name = 'chowmein', price = 150 },
		{ name = 'tecaliente', price = 20 },
		{ name = 'barbadragon', price = 50 },
		{ name = 'donutbean', price = 20 },
		{ name = 'burrito', price = 50 },
		{ name = 'generaltso', price = 100 },
		{ name = 'atole', price = 75 },
		{ name = 'conhaque', price = 100 },
		{ name = 'pizza', price = 150 },
		{ name = 'beerzero', price = 75 },
		{ name = 'coffebean', price = 15 },
		{ name = 'chicles', price = 5 },
		{ name = 'martini', price = 100 },
		{ name = 'jagerbomb', price = 100 },
		{ name = 'sopa', price = 75 },
		{ name = 'coffe', price = 5 },
		{ name = 'gongbao', price = 150 },
		{ name = 'esquite', price = 50 },
		{ name = 'mani', price = 5 },
		{ name = 'jusfruit', price = 10 },
		{ name = 'carnecochino', price = 150 },
		{ name = 'bizcochogofio', price = 50 },
		{ name = 'sandwich', price = 5 },
		{ name = 'tequilala', price = 150 },
		{ name = 'ruso', price = 50 },
		{ name = 'garbanzas', price = 150 },
		{ name = 'tequila', price = 100 },
		{ name = 'vinodepata', price = 120 },
		{ name = 'rhum', price = 150 },
		{ name = 'mojito', price = 100 },
		{ name = 'moussedegofio', price = 50 },
		{ name = 'takis', price = 5 },
		{ name = 'ensaladachina', price = 100 },
		{ name = 'burritohot', price = 50 },
		{ name = 'adios_vanila', price = 150 },
		{ name = 'svarak', price = 100 },
		{ name = 'white_wine', price = 150 },
		{ name = 'zumonaranja', price = 10 },
		{ name = 'hotdog', price = 5 },
		{ name = 'tequipaf', price = 120 },
		{ name = 'nachoscan', price = 50 },
		{ name = 'medagua', price = 10 },
		{ name = 'churros', price = 40 },
		{ name = 'beer', price = 75 },
		{ name = 'empanada', price = 75 },
		{ name = 'lapas', price = 150 },
		{ name = 'ensaladilla', price = 100 },
		{ name = 'cola', price = 5 },
		{ name = 'jiandui', price = 50 },
		{ name = 'tacohot', price = 50 },
		{ name = 'vodka_redbull', price = 100 },
		{ name = 'tacofarmer', price = 50 },
		{ name = 'bolcacahuetes', price = 10 },
		{ name = 'helado', price = 50 },
		{ name = 'anacardos', price = 5 },
		{ name = 'croissant', price = 50 },
		{ name = 'anacardos', price = 5 },
		{ name = 'ronzumo', price = 100 },
		{ name = 'batidofresa', price = 10 },
		{ name = 'barraquito', price = 5 },
		{ name = 'medbocata', price = 10 },
	}, locations = { -- lugares donde están estas tiendas (puede ser uno o varios)
		vec3(153.2305, -3211.5881, 5.9106),
	}
},

}
