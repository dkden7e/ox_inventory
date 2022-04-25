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
			export = 'ox_inventory_examples.testburger',
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
		label = 'Vendas',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dinero Negro',
	},

	['burger'] = {
		label = 'Hamburguesa',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te has comido una deliciosa hamburguesa'
		},
	},

	['cola'] = {
		label = 'DinoCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Has saciado tu sed con una rica DinoCola'
		}
	},

	['parachute'] = {
		label = 'Paracaidas',
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
		label = 'Ganzúa',
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
		label = 'Teléfono Móvil',
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
		label = 'Dinero',
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
		label = 'Agua',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Te has bebido una botella de agua'
		}
	},

	['radio'] = {
		label = 'Walkie Talkie',
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
		label = 'Radio caset',
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
		label = 'Bastón',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},

	['stretcher'] = {
		label = 'Camilla plegable',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},

	['casino_chips'] = {
		label = 'fichas del diamond',
		weight = 0,
		stack = true,
		close = true,
		description = nil
	},

	['casino_ticket'] = {
		label = 'tícket de la suerte diamond',
		weight = 0,
		stack = true,
		close = true,
		description = nil
	},

	['burncream'] = {
		label = 'pomada (quemaduras)',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['defib'] = {
		label = 'desfibrilador',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['medbag'] = {
		label = 'bolsa médica',
		weight = 3,
		stack = true,
		close = true,
		description = nil
	},

	['medikit'] = {
		label = 'kit médico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['sedative'] = {
		label = 'sedante',
		weight = 0,
		stack = true,
		close = true,
		description = nil
	},

	['suturekit'] = {
		label = 'kit de sutura',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['tweezers'] = {
		label = 'pinzas',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['wheelchair'] = {
		label = 'Silla de ruedas',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['photo'] = {
		label = 'foto',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['skateboard'] = {
		label = 'monopatín',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['rccar'] = {
		label = 'coche rc',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['advrepairkit'] = {
		label = 'kit de reparación avanzado',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['aluminium'] = {
		label = 'aluminio',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['car_door'] = {
		label = 'puerta de coche',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['car_hood'] = {
		label = 'capó de coche',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['car_trunk'] = {
		label = 'puerta de maletero',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['car_wheel'] = {
		label = 'rueda de coche',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['carjack'] = {
		label = 'gato hidráulico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['copper'] = {
		label = 'cobre',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['electric_scrap'] = {
		label = 'chatarra eléctrica',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['glass'] = {
		label = 'vidrio',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['plastic'] = {
		label = 'plástico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['puerta_de_coche'] = {
		label = 'puerta de coche',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['repairkit'] = {
		label = 'kit de reparación',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['rubber'] = {
		label = 'goma',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['scrap_metal'] = {
		label = 'chatarra',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['steel'] = {
		label = 'acero',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
}