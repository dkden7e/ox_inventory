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
			{ name = 'bolcacahuetes', price = 10 },
			{ name = 'water', price = 10 },
			{ name = (isTencity and 'cola' or 'cocacola'), price = 25 },
			{ name = 'energy', price = 50 },
			{ name = 'beer', price = 50 },
			{ name = 'phone', price = 500 },
			{ name = 'radio', price = 2000 },
			{ name = 'boombox', price = 4000 },
			{ name = 'tarjeta_transportes', metadata = { usos = 25, registered = true, serial = 'TRANSP' }, price = 750 },
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
--			{ name = 'ammo-9', price = 5, },
--			{ name = 'WEAPON_KNIFE', price = 200 },
--			{ name = 'WEAPON_BAT', price = 100 },
--			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' }
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
		}, locations = {
			vec3(486.1490, -995.8393, 30.6898), -- MRPD
			vec3(-430.4039, 5999.2310, 31.7165), -- PALETO LSSD
			vec3(1846.0941, 3692.8203, 34.2670), -- SANDY LSSD
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
			{ name = 'seed_weed', price = 100 },
			{ name = 'seed_weed', price = 100, currency = 'black_money' },
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
			{ name = 'seed_weed', price = 100 },
			{ name = 'seed_weed', price = 100, currency = 'black_money' },
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
			{ name = 'seed_weed', price = 100 },
		}, locations = {
			vec3(-1169.0750, -1572.7281, 4.6636)
		}
	}),

	HuntingStore = {
		name = 'Bayview Lodge (tienda de caza)',
		blip = {
			id = 141, colour = 31, scale = 0.8
		}, inventory = {
			{ name = 'bandage', price = 50 },
			{ name = 'medikit', price = 500 },
			{ name = 'WEAPON_KNIFE', price = 500 },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'radio', price = 800 },
			{ name = 'ammo-shotgun', price = 50, license = 'weapon' },
			{ name = 'ammo-flare', price = 200, license = 'weapon' },
			{ name = 'WEAPON_FLARE', price = 250 },
			{ name = 'WEAPON_FLAREGUN', price = 2500, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon' },
			{ name = 'WEAPON_DOUBLEBARRELFM', price = 5000, metadata = { registered = true, serial = 'HUNT'}, license = 'weapon' },
			{ name = 'at_dbshotgunfm_barrel2', price = 5000, license = 'weapon' },
			{ name = 'at_dbshotgunfm_barrel3', price = 4000, license = 'weapon' },
			{ name = 'at_dbshotgunfm_barrel4', price = 3000, license = 'weapon' },
			{ name = 'at_dbshotgunfm_barrel5', price = 2000, license = 'weapon' },
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
            `prop_watercooler`
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
            { name = 'spray', price = 50 },
            { name = 'spray_remover', price = 50 },
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

}
