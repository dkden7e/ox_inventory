return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		}
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
		consume = 0,
		client = {
			anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
			disable = { move = true, car = true, combat = true },
			usetime = 5000,
			cancel = true
		}
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 and GetResourceState('npwd') == 'started' then
					exports.npwd:setPhoneDisabled(false)
				end
			end,

			remove = function(total)
				if total < 1 and GetResourceState('npwd') == 'started' then
					exports.npwd:setPhoneDisabled(true)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		consume = 0,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
		}
	},

	['spray'] = {
		label = 'spray',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['spray_remover'] = {
		label = 'spray remover',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['boombox'] = {
		label = 'boombox',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['neonbox'] = {
		label = 'neon box',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['neoncontroller'] = {
		label = 'neon controller',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['fakeplate'] = {
		label = 'fake vehicle plate',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['remote'] = {
		label = 'remote',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_bcloth'] = {
		label = 'cuchara rota con tela mojada',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_bladle'] = {
		label = 'cucharón roto',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_booze'] = {
		label = 'licor',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_bottle'] = {
		label = 'botella',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_cleaner'] = {
		label = 'limpiador',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_cloth'] = {
		label = 'tela',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_dliquid'] = {
		label = 'líquido sucio',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_file'] = {
		label = 'archivo',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_fpacket'] = {
		label = 'sobre saborizante',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_grease'] = {
		label = 'grasa',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_iheat'] = {
		label = 'calentador de inmersión',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_jspoon'] = {
		label = 'cuchara rota',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_ladle'] = {
		label = 'cucharón',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_metal'] = {
		label = 'metal',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_minih'] = {
		label = 'mini martillo',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_plug'] = {
		label = 'enchufe',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_ppunch'] = {
		label = 'puño de prisión',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_rock'] = {
		label = 'piedra',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_schange'] = {
		label = 'repuesto',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_shank'] = {
		label = 'caña',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_smetal'] = {
		label = 'metal afilado',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_spoon'] = {
		label = 'cuchara',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hd_wcloth'] = {
		label = 'tela mojada',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bodycam'] = {
		label = 'Bodycam',
		weight = 1000,
		stack = false,
		consume = 0,
		allowArmed = true
	},

	['firework'] = {
		label = 'firework',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['fireworks'] = {
		label = 'fireworks launcher',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['notepad'] = {
		label = 'notepad',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['walking_stick'] = {
		label = 'walking stick',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},

	['stretcher'] = {
		label = 'camilla plegable',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},
}