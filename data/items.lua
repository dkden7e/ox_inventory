local QueServer = GetConvar("server_number", "1")
local isTencity = (QueServer == "TENCITY")

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
		label = 'Teléfono móvil',
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
		description = 'Producto de limpieza multiusos'
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

	['crutches'] = {
		label = 'Muleta',
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
		label = 'Fichas del casino',
		weight = 5,
		stack = true,
		close = true,
		description = nil
	},

	['casino_ticket'] = {
		label = 'Tícket de la suerte Diamond',
		weight = 50,
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

	['cerdoagridulce'] = {
		label = 'Cerdo Agridulce',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -30000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Cerdo Agridulce',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908815460352090/cerdoagridulce.png?width=625&height=416',
		},
	},

	['cupcakebean'] = {
		label = 'magdalena bean especial',
		weight = 220,
		client = {
			status = {hunger = 70000, drunk = -75000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `v_res_cakedome`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x magdalena bean especial'
		},
	},

	['milk'] = {
		label = 'leche',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = 100000, },
			anim = 'eating',
			prop = { model = `prop_cs_milk_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x leche'
		},
	},

	['anacardos'] = {
		label = 'anacardos',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_chips01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x anacardos'
		},
	},

	['coffe'] = {
		label = 'café',
		weight = 220,
		client = {
			status = {hunger = 85000, thirst = 20000, drunk = -30000, },
			anim = 'eating',
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x café'
		},
	},

	['fooddogp'] = {
		label = 'comida para perros premium',
		weight = 220,
		client = {
			status = {hunger = 250000, },
			anim = 'eating',
			prop = { model = `prop_cs_hotdog_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para perros premium'
		},
	},

	['beer'] = {
		label = 'cerveza',
		weight = 220,
		client = {
			status = {hunger = -25000, thirst = 200000, drunk = 100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_beer_logopen`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cerveza'
		},
	},

	['queque'] = {
		label = 'Queque',
		weight = 220,
		client = {
			status = {hunger = 300000, thirst = -30000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Queque',
			image = '',
		},
	},

	['almogrote'] = {
		label = 'almogrote gomero',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -50000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x almogrote gomero'
		},
	},

	['polvito_uruguayo'] = {
		label = 'Polvito uruguayo',
		weight = 220,
		client = {
			status = {hunger = 300000, thirst = -50000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Polvito uruguayo',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908294297116672/polvito.png',
		},
	},

	['champagne'] = {
		label = 'copa de champán',
		weight = 220,
		client = {
			status = {hunger = -10000, thirst = 200000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de champán'
		},
	},

	['jusfruit'] = {
		label = 'jugo de frutas',
		weight = 220,
		client = {
			status = {hunger = 150000, thirst = 20000, drunk = -25000, },
			anim = 'eating',
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x jugo de frutas'
		},
	},

	['heladobean'] = {
		label = 'helado bean especial',
		weight = 220,
		client = {
			status = {hunger = 60000, thirst = 25000, drunk = -90000, },
			anim = 'eating',
			prop = { model = `prop_cs_whiskey_bot_stop`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x helado bean especial'
		},
	},

	['cervezasin'] = {
		label = 'Cerveza Sin',
		weight = 220,
		client = {
			status = {hunger = 5000, thirst = 25000, drunk = -80000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_amb_beer_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Cerveza Sin',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968909091655254016/dinocervezasin.jpg',
		},
	},

	['wantan'] = {
		label = 'Wantan',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -25000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Wantan',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908901653291028/wantan.png?width=748&height=416',
		},
	},

	['water'] = {
		label = 'botella de agua',
		weight = 220,
		client = {
			status = {thirst = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x botella de agua'
		},
	},

	['absinthe'] = {
		label = 'absenta',
		weight = 220,
		client = {
			status = {hunger = -40000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x absenta'
		},
	},

	['gominolas'] = {
		label = 'gominolas',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_candy_pqs`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x gominolas'
		},
	},

	['moussedegofio'] = {
		label = 'mousse de gofio',
		weight = 220,
		client = {
			status = {hunger = 400000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x mousse de gofio'
		},
	},

	['donutbean'] = {
		label = 'dona bean especial',
		weight = 220,
		client = {
			status = {hunger = 70000, drunk = -75000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_donut_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x dona bean especial'
		},
	},

	['bolnoixcajou'] = {
		label = 'anacardos',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_chips01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x anacardos'
		},
	},

	['bolcacahuetes'] = {
		label = 'cacahuetes',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_chips01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cacahuetes'
		},
	},

	['fanta'] = {
		label = 'fanta',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_sodacup_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x fanta'
		},
	},

	['cocacola'] = {
		label = 'cocacola',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_sodacup_01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cocacola'
		},
	},

	['sangria'] = {
		label = 'vaso de sangría',
		weight = 220,
		client = {
			status = {hunger = -10000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de sangría'
		},
	},

	['virgin'] = {
		label = 'vaso de Virgin-la',
		weight = 220,
		client = {
			status = {hunger = -10000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Virgin-la'
		},
	},

	['carne_fiesta'] = {
		label = 'Carne fiesta',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -40000, drunk = -100000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Carne fiesta',
			image = '',
		},
	},

	['arepa'] = {
		label = 'Arepa Reina Pepiada',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Arepa Reina Pepiada',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908975355621406/pepiada.png',
		},
	},

	['quesofrito'] = {
		label = 'queso frito',
		weight = 220,
		client = {
			status = {hunger = 350000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x queso frito'
		},
	},

	['whisky'] = {
		label = 'vaso de whisky',
		weight = 220,
		client = {
			status = {hunger = -35000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de whisky'
		},
	},

	['sandwichhot'] = {
		label = 'sandwich picante',
		weight = 220,
		client = {
			status = {hunger = 175000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x sandwich picante'
		},
	},

	['fooddog'] = {
		label = 'comida para perros',
		weight = 220,
		client = {
			status = {hunger = 150000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para perros'
		},
	},

	['helado'] = {
		label = 'helado',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = 10000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_cs_whiskey_bot_stop`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x helado'
		},
	},

	['kalimotxo'] = {
		label = 'Vaso de Kalimotxo',
		weight = 220,
		client = {
			status = {hunger = -30000, thirst = 200000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Vaso de Kalimotxo'
		},
	},

	['energy'] = {
		label = 'Monster',
		weight = 220,
		client = {
			status = {hunger = 30000, thirst = 125000, drunk = -120000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Monster'
		},
	},

	['durum'] = {
		label = 'Dürüm',
		weight = 220,
		client = {
			status = {hunger = 250000, },
			anim = 'eating',
			prop = { model = `prop_food_bs_burger2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Dürüm'
		},
	},

	['rhumcoca'] = {
		label = 'roncola',
		weight = 220,
		client = {
			status = {hunger = -25000, thirst = 200000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_beer_logopen`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x roncola'
		},
	},

	['carnecabra'] = {
		label = 'carne de cabra',
		weight = 220,
		client = {
			status = {hunger = 600000, thirst = -40000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x carne de cabra'
		},
	},

	['quesadillas'] = {
		label = 'quesadilla herreña',
		weight = 220,
		client = {
			status = {hunger = 350000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x quesadilla herreña'
		},
	},

	['papasarrugadas'] = {
		label = 'papas arrugadas',
		weight = 220,
		client = {
			status = {hunger = 400000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x papas arrugadas'
		},
	},

	['croissant'] = {
		label = 'croissant',
		weight = 220,
		client = {
			status = {hunger = 100000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_nana2a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x croissant'
		},
	},

	['tacofarmer'] = {
		label = 'taco',
		weight = 220,
		client = {
			status = {hunger = 125000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_taco_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x taco'
		},
	},

	['vodka_redbull'] = {
		label = 'vaso de vodka con Red Bull',
		weight = 220,
		client = {
			status = {hunger = -80000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de vodka con Red Bull'
		},
	},

	['orgasmo_vanilla'] = {
		label = 'Orgasmo del vanilla',
		weight = 220,
		client = {
			status = {hunger = -70000, thirst = -9000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_pinacolada`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Orgasmo del vanilla'
		},
	},

	['powerade'] = {
		label = 'Powerade',
		weight = 220,
		client = {
			status = {hunger = 15000, thirst = 300000, drunk = -150000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_energy_drink`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Powerade'
		},
	},

	['meloun'] = {
		label = 'vaso de zumo de sandía',
		weight = 220,
		client = {
			status = {hunger = -20000, thirst = 180000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de zumo de sandía'
		},
	},

	['long'] = {
		label = 'vaso de Long Island',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Long Island'
		},
	},

	['cosmopolitan'] = {
		label = 'copa de Cosmopolitan',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Cosmopolitan'
		},
	},

	['limonade'] = {
		label = 'limonada',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = 120000, },
			anim = 'eating',
			prop = { model = `ng_proc_sodacup_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x limonada'
		},
	},

	['tacohot'] = {
		label = 'taco picante',
		weight = 220,
		client = {
			status = {hunger = 125000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_taco_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x taco picante'
		},
	},

	['svarak'] = {
		label = 'copa de Svarak Malina',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Svarak Malina'
		},
	},

	['costillas'] = {
		label = 'costillas',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x costillas'
		},
	},

	['barbadragon'] = {
		label = 'Barba de Dragón',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Barba de Dragón',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908853175533609/heladofrito.png?width=365&height=416',
		},
	},

	['white_wine'] = {
		label = 'Vino blanco',
		weight = 220,
		client = {
			status = {thirst = 150000, drunk = 100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Vino blanco',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908295609909278/vinoblanco.png',
		},
	},

	['moussemango'] = {
		label = 'Mousse de Mango',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Mousse de Mango',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908997451194458/postremango.png?width=960&height=403',
		},
	},

	['takishot'] = {
		label = 'bolsa de chips picante',
		weight = 220,
		client = {
			status = {hunger = 90000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `v_ret_ml_chips2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bolsa de chips picante'
		},
	},

	['vodka'] = {
		label = 'vaso de vodka',
		weight = 220,
		client = {
			status = {hunger = -25000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_vodka_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de vodka'
		},
	},

	['quesadilla'] = {
		label = 'quesadilla',
		weight = 220,
		client = {
			status = {hunger = 140000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_food_bs_chips`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x quesadilla'
		},
	},

	['ron'] = {
		label = 'vaso de ron',
		weight = 220,
		client = {
			status = {hunger = -35000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de ron'
		},
	},

	['pastelluna'] = {
		label = 'Pastel de Luna',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Pastel de Luna',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908874713301072/pastelluna.png?width=416&height=416',
		},
	},

	['sexbeach'] = {
		label = 'copa de Sex on the Beach',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_pinacolada`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Sex on the Beach'
		},
	},

	['tamal'] = {
		label = 'tamal',
		weight = 220,
		client = {
			status = {hunger = 120000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_nana1a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x tamal'
		},
	},

	['monster'] = {
		label = 'Monster',
		weight = 220,
		client = {
			status = {hunger = 30000, thirst = 125000, drunk = -120000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_sodacan_01b`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Monster'
		},
	},

	['ensaladilla'] = {
		label = 'Ensaladilla',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -20000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Ensaladilla',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908293080743946/ensaladilla.jpg',
		},
	},

	['lapas'] = {
		label = 'Lapas',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -20000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Lapas',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908293667966986/lapas.jpg',
		},
	},

	['platanos'] = {
		label = 'platanos',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = 10000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `v_res_tre_banana`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x platanos'
		},
	},

	['rollitos'] = {
		label = 'Rollitos de Primavera',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Rollitos de Primavera',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908901175144468/rollitos.png?width=766&height=416',
		},
	},

	['whiskey'] = {
		label = 'vaso de whiskey',
		weight = 220,
		client = {
			status = {hunger = -30000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de whiskey'
		},
	},

	['takis'] = {
		label = 'bolsa de chips al pastor',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -5000, },
			anim = 'eating',
			prop = { model = `v_ret_ml_chips1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bolsa de chips al pastor'
		},
	},

	['taco'] = {
		label = 'taco',
		weight = 220,
		client = {
			status = {hunger = 250000, },
			anim = 'eating',
			prop = { model = `prop_taco_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x taco'
		},
	},

	['garbanzas'] = {
		label = 'garbanzas',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -50000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x garbanzas'
		},
	},

	['principealberto'] = {
		label = 'Príncipe Alberto',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Príncipe Alberto'
		},
	},

	['oreo'] = {
		label = 'oreo',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = -5000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_candy_pqs`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x oreo'
		},
	},

	['burritohot'] = {
		label = 'burrito picante',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_food_burg2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x burrito picante'
		},
	},

	['gongbao'] = {
		label = 'Pollo Gong Bao',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -30000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Pollo Gong Bao',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908874931372163/pollogong.png',
		},
	},

	['mojorojo'] = {
		label = 'mojo rojo',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -75000, },
			anim = 'eating',
			prop = { model = `prop_food_ketchup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x mojo rojo'
		},
	},

	['empanada'] = {
		label = 'empanada',
		weight = 220,
		client = {
			status = {hunger = 130000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_food_chips`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x empanada'
		},
	},

	['medagua'] = {
		label = 'botella de agua vitaminada',
		weight = 220,
		client = {
			status = {hunger = 10000, thirst = 250000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `p_amb_bag_bottle_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x botella de agua vitaminada'
		},
	},

	['arroztres'] = {
		label = 'Arroz Tres Delicias',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Arroz Tres Delicias',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908814831222864/arroztres.png',
		},
	},

	['papas_arrugadas'] = {
		label = 'Papas arrugadas',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -20000, drunk = -100000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Papas arrugadas',
			image = '',
		},
	},

	['bistec'] = {
		label = 'bistec 100% Angus',
		weight = 220,
		client = {
			status = {hunger = 650000, thirst = -40000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bistec 100% Angus'
		},
	},

	['nachoscan'] = {
		label = 'Nachos Canarios',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Nachos Canarios',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968909016073912340/totopos.png',
		},
	},

	['hongdou'] = {
		label = 'Hong Dou Tang',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Hong Dou Tang',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908875141107772/hongdou.png',
		},
	},

	['foodbird'] = {
		label = 'comida para aves',
		weight = 220,
		client = {
			status = {hunger = 150000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para aves'
		},
	},

	['foodcat'] = {
		label = 'comida para gatos',
		weight = 220,
		client = {
			status = {hunger = 150000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para gatos'
		},
	},

	['ensalada'] = {
		label = 'ensalada',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = 15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x ensalada'
		},
	},

	['foodfish'] = {
		label = 'comida para peces',
		weight = 220,
		client = {
			status = {hunger = 150000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para peces'
		},
	},

	['zumo_fruta'] = {
		label = 'zumo de frutas',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x zumo de frutas'
		},
	},

	['icetea'] = {
		label = 'té helado',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x té helado'
		},
	},

	['pan'] = {
		label = 'pan',
		weight = 220,
		client = {
			status = {hunger = 200000, },
			anim = 'eating',
			prop = { model = `v_ret_247_bread1`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x pan'
		},
	},

	['foodfarm'] = {
		label = 'comida para animales de granja',
		weight = 220,
		client = {
			status = {hunger = 150000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para animales de granja'
		},
	},

	['manhattan'] = {
		label = 'vaso de Manhattan',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Manhattan'
		},
	},

	['pulpo_gallega'] = {
		label = 'Pulpo a la gallega',
		weight = 220,
		client = {
			status = {hunger = 300000, thirst = -30000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Pulpo a la gallega',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908294880133140/pulpo.jpg',
		},
	},

	['matacitron'] = {
		label = 'vaso de matacitron',
		weight = 220,
		client = {
			status = {hunger = -10000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de matacitron'
		},
	},

	['bread'] = {
		label = 'bocadillo',
		weight = 220,
		client = {
			status = {hunger = 200000, },
			anim = 'eating',
			prop = { model = `prop_food_bs_burger2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bocadillo'
		},
	},

	['calamares_romana'] = {
		label = 'Calamares a la romana',
		weight = 220,
		client = {
			status = {hunger = 300000, thirst = -20000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Calamares a la romana',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908292749406249/calamares.png',
		},
	},

	['adios_vanilla'] = {
		label = 'Adiós Motherfucker',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Adiós Motherfucker'
		},
	},

	['redbull'] = {
		label = 'Red Bull',
		weight = 220,
		client = {
			status = {hunger = 25000, thirst = 150000, drunk = -150000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_orang_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Red Bull'
		},
	},

	['vieja_plancha'] = {
		label = 'Vieja a la plancha',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -20000, drunk = -100000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Vieja a la plancha',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908295245008996/viejaplancha.jpg',
		},
	},

	['escaldon'] = {
		label = 'escaldón de gofio',
		weight = 220,
		client = {
			status = {hunger = 400000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x escaldón de gofio'
		},
	},

	['tequipaf'] = {
		label = 'copa de tequila paf recette',
		weight = 220,
		client = {
			status = {hunger = -15000, thirst = 20000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_pinacolada`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de tequila paf recette'
		},
	},

	['bizcochogofio'] = {
		label = 'Bizcocho de Gofio con Bienmesabe',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Bizcocho de Gofio con Bienmesabe',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908975594688582/bizcocho.png?width=676&height=676',
		},
	},

	['hotdog'] = {
		label = 'perro caliente',
		weight = 220,
		client = {
			status = {hunger = 90000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_hotdog_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x perro caliente'
		},
	},

	['tartamaracuya'] = {
		label = 'Tarta de Queso con Maracuyá',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Tarta de Queso con Maracuyá',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908975842144356/maracuya.png',
		},
	},

	['tresleches'] = {
		label = 'Torta Tres Leches',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Torta Tres Leches',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968909016484937768/tresleches.png?width=676&height=676',
		},
	},

	['quesadillamex'] = {
		label = 'Quesadilla',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Quesadilla',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908997711265932/quesadilla.png',
		},
	},

	['nachosmex'] = {
		label = 'Nachos Mexicanos',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Nachos Mexicanos',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908976286732338/nachos.png',
		},
	},

	['tequenos'] = {
		label = 'La Ruleta Tequeña',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x La Ruleta Tequeña',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968909015784493136/tequenos.png',
		},
	},

	['chocolate'] = {
		label = 'chocolate',
		weight = 220,
		client = {
			status = {hunger = 75000, thirst = -10000, drunk = -80000, },
			anim = 'eating',
			prop = { model = `prop_choc_ego`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x chocolate'
		},
	},

	['jiandui'] = {
		label = 'Jian Dui',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Jian Dui',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908875359215636/jiandui.png?width=552&height=416',
		},
	},

	['heladofrito'] = {
		label = 'Helado Frito',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Helado Frito',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908814625697892/chowmein.png?width=768&height=330',
		},
	},

	['chowmein'] = {
		label = 'Chow Mein',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -30000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Chow Mein',
			image = 'URL directa de la imagen',
		},
	},

	['chips'] = {
		label = 'bolsa de papas',
		weight = 220,
		client = {
			status = {hunger = 75000, thirst = -10000, },
			anim = 'eating',
			prop = { model = `v_ret_ml_chips3`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bolsa de papas'
		},
	},

	['tofu'] = {
		label = 'Tofu Mapo',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -30000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Tofu Mapo',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908901389066320/tofu.png?width=416&height=416',
		},
	},

	['ensaladachina'] = {
		label = 'Ensalada de Col China',
		weight = 220,
		client = {
			status = {hunger = 195000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Ensalada de Col China',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908853410422875/ensaladacol.png?width=638&height=416',
		},
	},

	['sopafideos'] = {
		label = 'Sopa de Fideos Chinos',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Sopa de Fideos Chinos',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908853678837871/fideoschinos.png?width=766&height=416',
		},
	},

	['mojito'] = {
		label = 'mojito',
		weight = 220,
		client = {
			status = {hunger = -35000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x mojito'
		},
	},

	['rhum'] = {
		label = 'vaso de ron reserva',
		weight = 220,
		client = {
			status = {hunger = -35000, thirst = 200000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de ron reserva'
		},
	},

	['vinodepata'] = {
		label = 'vino de pata',
		weight = 220,
		client = {
			status = {thirst = 150000, drunk = 100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_redwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vino de pata'
		},
	},

	['mojoverde'] = {
		label = 'mojo verde',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -50000, },
			anim = 'eating',
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x mojo verde'
		},
	},

	['roncoke'] = {
		label = 'vaso de ron con cola',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de ron con cola'
		},
	},

	['beerzero'] = {
		label = 'cerveza sin alcohol',
		weight = 220,
		client = {
			status = {hunger = -25000, thirst = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_beerdusche`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cerveza sin alcohol'
		},
	},

	['mimosa'] = {
		label = 'copa de Mimosa-la',
		weight = 220,
		client = {
			status = {thirst = -5000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_champ`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Mimosa-la'
		},
	},

	['vinoafrutado'] = {
		label = 'vino afrutado',
		weight = 220,
		client = {
			status = {thirst = 150000, drunk = 100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_redwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vino afrutado'
		},
	},

	['polvitouruguayo'] = {
		label = 'polvito uruguayo',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x polvito uruguayo'
		},
	},

	['sandwichbean'] = {
		label = 'sandwich bean especial',
		weight = 220,
		client = {
			status = {hunger = 175000, thirst = -5000, },
			anim = 'eating',
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x sandwich bean especial'
		},
	},

	['cupcake'] = {
		label = 'magdalena',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = -5000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `v_res_cakedome`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x magdalena'
		},
	},

	['solomillo'] = {
		label = 'solomillo',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x solomillo'
		},
	},

	['pocima'] = {
		label = 'pócima',
		weight = 220,
		client = {
			status = {hunger = -10000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x pócima'
		},
	},

	['carnecochino'] = {
		label = 'carne de cochino',
		weight = 220,
		client = {
			status = {hunger = 600000, thirst = -40000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x carne de cochino'
		},
	},

	['bienmesabe'] = {
		label = 'bienmesabe palmero',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -20000, },
			anim = 'eating',
			prop = { model = `prop_plate_03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bienmesabe palmero'
		},
	},

	['tequila'] = {
		label = 'tequila',
		weight = 220,
		client = {
			status = {hunger = -30000, thirst = 20000, drunk = 400000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x tequila'
		},
	},

	['foodcatp'] = {
		label = 'comida para gatos premium',
		weight = 220,
		client = {
			status = {hunger = 250000, },
			anim = 'eating',
			prop = { model = `prop_plate_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x comida para gatos premium'
		},
	},

	['ruso'] = {
		label = 'vaso de ruso blanco',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de ruso blanco'
		},
	},

	['tequilala'] = {
		label = 'copa de tequila 50 años',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de tequila 50 años'
		},
	},

	['cubata'] = {
		label = 'cubata',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cubata'
		},
	},

	['sandwich'] = {
		label = 'sandwich',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -10000, },
			anim = 'eating',
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x sandwich'
		},
	},

	['medbocata'] = {
		label = 'bocata integral especial',
		weight = 220,
		client = {
			status = {hunger = 250000, },
			anim = 'eating',
			prop = { model = `prop_food_bs_burger2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x bocata integral especial'
		},
	},

	['gintonic'] = {
		label = 'gintonic',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x gintonic'
		},
	},

	['jagerbomb'] = {
		label = 'vaso de Jäger Bomb',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Jäger Bomb'
		},
	},

	['paella_marisco'] = {
		label = 'Paella de marisco',
		weight = 220,
		client = {
			status = {hunger = 750000, thirst = -40000, drunk = -100000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Paella de marisco',
			image = 'https://cdn.discordapp.com/attachments/902127023948955648/968908293944786964/paella.png',
		},
	},

	['barraquito'] = {
		label = 'Barraquito',
		weight = 220,
		client = {
			status = {hunger = 10000, thirst = 15000, drunk = -80000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `v_club_vu_coffeecup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Barraquito',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968909091378458754/barraquito.png?width=312&height=675',
		},
	},

	['frappuccinobean'] = {
		label = 'frappuccino bean especial',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = 35000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `v_ret_gc_cup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x frappuccino bean especial'
		},
	},

	['coffebean'] = {
		label = 'café bean  especial',
		weight = 220,
		client = {
			status = {hunger = 90000, thirst = 30000, drunk = -50000, },
			anim = 'eating',
			prop = { model = `p_ing_coffeecup_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x café bean  especial'
		},
	},

	['esquite'] = {
		label = 'Esquite',
		weight = 220,
		client = {
			status = {hunger = 95000, thirst = 20000, },
			anim = 'eating',
			prop = { model = `prop_bar_measrjug`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x esquite'
		},
	},

	['conhaque'] = {
		label = 'Copa de coñac',
		weight = 220,
		client = {
			status = {hunger = -10000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_redwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de coñac'
		},
	},

	['ananas'] = {
		label = 'Copa de Ananas Milk',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_pinacolada`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Ananas Milk'
		},
	},

	['ronzumo'] = {
		label = 'Vaso de ron con zumo',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de ron con zumo'
		},
	},

	['ovocny'] = {
		label = 'Vaso de Ovocny',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Ovocny'
		},
	},

	['chicles'] = {
		label = 'Chicles',
		weight = 220,
		client = {
			status = {hunger = 5000, thirst = 4000, drunk = -10000, stress = -120000 },
			anim = 'eating',
			prop = { model = `prop_candy_pqs`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x chicles'
		},
	},

	['cigarett'] = {
		label = 'Cigarrillo',
		weight = 220,
		client = {
			status = { stress = -250000 },
			command = 'e smoke',
			prop = { model = `ng_proc_cigarette01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cigarrillo'
		},
	},

	['joint'] = {
		label = (isTencity and 'Torro de tabaiguana' or 'Porro'),
		weight = 10,
		client = {
			status = {drunk = 75000, stress = -450000 },
			command = 'e smokepot',
			prop = { model = `p_cs_joint_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x ' .. (isTencity and 'torro de tabaiguana' or 'porro')
		},
	},

	['pizza'] = {
		label = 'Pizza',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -10000, },
			anim = 'eating',
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x pizza'
		},
	},

	['martini'] = {
		label = 'Copa de Martini',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_whtwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de Martini'
		},
	},

	['burritofarmer'] = {
		label = 'Burrito especial Taco Farmer',
		weight = 220,
		client = {
			status = {hunger = 200000, },
			anim = 'eating',
			prop = { model = `prop_food_burg2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x burrito especial Taco Farmer'
		},
	},

	['atole'] = {
		label = 'Atole',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = 80000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x atole'
		},
	},

	['generaltso'] = {
		label = 'General TSO',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x General TSO',
			image = 'https://media.discordapp.net/attachments/902127023948955648/968908852890316850/generaltso.png?width=473&height=416',
		},
	},

	['wine'] = {
		label = 'Copa de vino',
		weight = 220,
		client = {
			status = {hunger = -20000, thirst = 200000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_drink_redwine`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x copa de vino'
		},
	},

	['queso_asado'] = {
		label = 'Queso asado',
		weight = 220,
		client = {
			status = {hunger = 500000, thirst = -20000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_cs_plate_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Queso Asado',
			image = '',
		},
	},

	['burrito'] = {
		label = 'Burrito',
		weight = 220,
		client = {
			status = {hunger = 140000, },
			anim = 'eating',
			prop = { model = `prop_food_burg2`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x burrito'
		},
	},

	['drpepper'] = {
		label = 'Soda Dr.Pepper',
		weight = 220,
		client = {
			status = {hunger = 10000, thirst = 110000, drunk = -25000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x soda Dr.Pepper'
		},
	},

	['burger'] = {
		label = 'Hamburguesa',
		weight = 220,
		client = {
			status = {hunger = 250000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x hamburguesa'
		},
	},

	['longla'] = {
		label = 'vaso de Long Island-la-la',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de Long Island-la-la'
		},
	},

	['cups'] = {
		label = 'Vasos de plástico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['tarjeta_transportes'] = {
		label = 'Tarjeta de transportes',
		weight = 1,
		stack = false,
		close = true,
		description = "Tarjeta del ayuntamiento que sirve para poder utilizar las bicicletas públicas y posiblemente en el futuro otros tipos de transporte público."
	},

	['bagofdope'] = {
		label = 'Bolsa de ' .. (isTencity and 'tabaiguana' or 'cannabis') .. '',
		weight = 50,
		stack = true,
		close = true,
		description = nil
	},

	['ziplock'] = {
		label = 'Bolsa Ziplock',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drugscales'] = {
		label = 'Balanza de precisión',
		weight = 250,
		stack = true,
		close = true,
		description = nil
	},

	['highgradefemaleseed'] = {
		label = 'Semilla de ' .. (isTencity and 'tabaiguana' or 'cannabis') .. ' femenina+',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['highgradefert'] = {
		label = 'Fertilizante de alto grado',
		weight = 200,
		stack = true,
		close = true,
		description = nil
	},

	['highgrademaleseed'] = {
		label = 'Semilla de ' .. (isTencity and 'tabaiguana' or 'cannabis') .. ' masculina+',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['lowgradefemaleseed'] = {
		label = 'Semilla de ' .. (isTencity and 'tabaiguana' or 'cannabis') .. ' femenina',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['lowgradefert'] = {
		label = 'Fertilizante barato',
		weight = 200,
		stack = true,
		close = true,
		description = nil
	},

	['lowgrademaleseed'] = {
		label = 'Semilla de ' .. (isTencity and 'tabaiguana' or 'cannabis') .. ' masculina',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['plantpot'] = {
		label = 'Maceta',
		weight = 250,
		stack = true,
		close = true,
		description = nil
	},

	['purifiedwater'] = {
		label = 'Agua purificada',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['trimmedweed'] = {
		label = 'Cogollos frescos',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['wateringcan'] = {
		label = 'Regadera',
		weight = 500,
		stack = true,
		close = true,
		description = nil
	},

	['seed_weed'] = {
		label = 'Semillas de ' .. (isTencity and 'tabaiguana' or 'cannabis'),
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['dopebag'] = {
		label = 'Bolsita de ' .. (isTencity and 'tabaiguana' or 'cogollos'),
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['ladder'] = {
		label = 'escalera de mano',
		weight = 10000,
		stack = true,
		close = true,
		description = nil
	},

	['largebackpack'] = {
		label = 'Mochila grande',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['mediumbackpack'] = {
		label = 'Mochila mediana',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['smallbackpack'] = {
		label = 'Mochila pequeña',
		weight = 5,
		stack = true,
		close = true,
		description = nil
	},

	['calculator'] = {
		label = 'Calculadora',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['campfire'] = {
		label = 'Hoguera',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['chair'] = {
		label = 'Silla',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['chair2'] = {
		label = 'Silla 2',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['comic_book_1'] = {
		label = 'Periódico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['comic_book_2'] = {
		label = 'Cómic de Batman',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['comic_book_3'] = {
		label = 'Cómic de Legendary Starlord',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['raspa'] = {
		label = 'Rasca y gana',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['sparewheel'] = {
		label = 'Rueda de repuesto',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['table'] = {
		label = 'Mesa',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['tent'] = {
		label = 'Caseta',
		weight = 4,
		stack = true,
		close = true,
		description = nil
	},

	['tent2'] = {
		label = 'Caseta 2',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['tent3'] = {
		label = 'Caseta 3',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},

	['fish'] = {
		label = 'Pescado',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fishbait'] = {
		label = 'Cebo de pesca',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fishingrod'] = {
		label = 'Caña de pescar',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['gym_membership'] = {
		label = 'Carnet de ' .. (isTencity and 'gymrondón' or 'gimnasio'),
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['protein_shake'] = {
		label = 'Batido de proteínas',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['shark'] = {
		label = 'Carne de tiburón',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['sportlunch'] = {
		label = 'Almuerzo deportivo',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['turtle'] = {
		label = 'Carne de tortuga',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['turtlebait'] = {
		label = 'Cebo de tortuga',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['gameboy'] = {
		label = 'Gameboy',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['rctransport'] = {
		label = 'Transporte de vehículos aereos',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['scratchcard'] = {
		label = 'Rasca y gana 2',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['parcel'] = {
		label = 'Paquete de envío',
		weight = 500,
		stack = true,
		close = true,
		description = nil
	},

	['letter'] = {
		label = 'Carta certificada',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['banana_kush_bag'] = {
		label = 'Bolsa Banana Kush',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['banana_kush_joint'] = {
		label = (isTencity and 'Torro ' or 'Porro ') .. 'Banana Kush',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['banana_kush_weed'] = {
		label = 'Banana Kush (1g)',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['blue_dream_bag'] = {
		label = 'Bolsa Blue Dream',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['blue_dream_joint'] = {
		label = (isTencity and 'Torro ' or 'Porro ') .. 'Blue Dream',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['blue_dream_weed'] = {
		label = 'Blue Dream (1g)',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['bongo'] = {
		label = 'Bong',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cubancigar'] = {
		label = 'Puro habano',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['davidoffcigar'] = {
		label = 'Puro Davidoff',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['liquid'] = {
		label = 'Líquido',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['marlboro'] = {
		label = 'Cajetilla Marlboro',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['marlborocig'] = {
		label = 'Cigarro Marlboro',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['ocb_paper'] = {
		label = 'Papel OCB',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['og_kush_bag'] = {
		label = 'Bolsa OG Kush',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['og_kush_joint'] = {
		label = (isTencity and 'Torro ' or 'Porro ') .. 'OG Kush',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['og_kush_weed'] = {
		label = 'OG Kush (1g)',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['purple_haze_bag'] = {
		label = 'Bolsa Purple Haze',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['purple_haze_joint'] = {
		label = (isTencity and 'Torro ' or 'Porro ') .. 'Purple Haze',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['purple_haze_weed'] = {
		label = 'Purple Haze (1g)',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['redw'] = {
		label = 'Cajetilla Redwood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['redwcig'] = {
		label = 'Cigarrillo Redwood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['vape'] = {
		label = 'Cigarro electrónico',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	-- COMIDA
	['pescado'] = {
	    label = 'Pescado',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `a_c_fish`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x pescado'
	    },
	},

	['sopa'] = {
	    label = 'sopa',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `v_res_fa_tintomsoup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x sopa'
	    },
	},

	['patatasfritas'] = {
	    label = (isTencity and 'Papas ' or 'Patatas ') .. 'fritas',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `prop_food_chips`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x patatas fritas'
	    },
	},

	['churros'] = {
	    label = 'Churros',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `v_res_fa_bread03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x churros'
	    },
	},

	['empanadarellena'] = {
	    label = 'Empanada rellena',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `prop_taco_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x empanada rellena'
	    },
	},

	['donut'] = {
	    label = 'Dónut',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `prop_amb_donut`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x donut'
	    },
	},

	['barritaener'] = {
	    label = 'Barrita energética',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `prop_candy_pqs`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x barrita energética'
	    },
	},

	-- BEBIDA
	['chococaliente'] = {
	    label = 'Chocolate caliente',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x chocolate caliente'
	    },
	},

	['batido'] = {
	    label = 'Batido',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x batido'
	    },
	},

	['tecaliente'] = {
	    label = 'Té caliente',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `prop_cs_script_bottle_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x té caliente'
	    },
	},

	['botellajagger'] = {
	    label = 'Botella de jagger',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `prop_rum_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x botella de jagger'
	    },
	},

	['botellatequila'] = {
	    label = 'Botella de tequila',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `prop_tequila_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x botella de tequila'
	    },
	},

	['botellawhisky'] = {
	    label = 'Botella de Whisky',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x botella de whisky'
	    },
	},

	['batidoproteinas'] = {
	    label = 'Batido de proteínas',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x batido de proteínas'
	    },
	},

	-- ONETRAVEL
	['ot_card'] = {
	    label = 'Tarjeta OneTravel',
		stack = true,
		close = true,
	    weight = 10,
	},

	['ot_cupon10'] = {
	    label = 'OneTravel 10%',
		stack = true,
		close = true,
	    weight = 1,
	},

	['ot_cupon15'] = {
	    label = 'Cupón OneTravel 15%',
		stack = true,
		close = true,
	    weight = 1,
	},

	['ot_cupon25'] = {
	    label = 'Cupón OneTravel 25%',
		stack = true,
		close = true,
	    weight = 1,
	},

	['ot_llave1'] = {
	    label = 'Llave OneTravel 1',
		stack = true,
		close = true,
	    weight = 50,
	},

	['ot_llave2'] = {
	    label = 'Llave OneTravel 2',
		stack = true,
		close = true,
	    weight = 50,
	},

	['ot_ticket'] = {
	    label = 'Tícket onetravel',
		stack = true,
		close = true,
	    weight = 5,
	},

	['ot_ticket_normal'] = {
	    label = 'Tícket OneTravel normal',
		stack = true,
		close = true,
	    weight = 5,
	},

	['ot_ticket_premium'] = {
	    label = 'Tícket OneTravel premium',
		stack = true,
		close = true,
	    weight = 5,
	},

	['ot_ticket_privado'] = {
	    label = 'Tícket OneTravel privado',
		stack = true,
		close = true,
	    weight = 5,
	},

	['ot_ticket_unuso'] = {
	    label = 'Tícket OneTravel un uso',
		stack = true,
		close = true,
	    weight = 5,
	},

	-- OTROS
	['binoculars'] = {
	    label = 'Primáticos',
		stack = true,
		close = true,
	    weight = 220,
	},

	['camara'] = {
	    label = 'Cámara',
		stack = true,
		close = true,
	    weight = 220,
	},

	['dados'] = {
	    label = 'Dados',
		stack = true,
		close = true,
	    weight = 50,
	},

	['megaphone'] = {
	    label = 'Megáfono',
		stack = true,
		close = true,
	    weight = 500,
	},

	['carnetsalud'] = {
	    label = 'Carnet de salud privada',
		stack = true,
		close = true,
	    weight = 1,
	},

	['cappuccino'] = {
		label = 'Cappuccino',
		weight = 220,
		client = {
			status = {hunger = 85000, thirst = 20000, drunk = -30000, },
			anim = 'eating',
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x cappuccino'
		},
	},

	['latte_cappuccino'] = {
		label = 'Latte Cappuccino',
		weight = 220,
		client = {
			status = {hunger = 85000, thirst = 20000, drunk = -30000, },
			anim = 'eating',
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x latte cappuccino'
		},
	},

	['batidofresa'] = {
	    label = 'batido de fresa',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x batido de fresa'
	    },
	},

	['batidoplatano'] = {
	    label = 'batido de plátano',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x batido de plátano'
	    },
	},

	['batidochocolate'] = {
	    label = 'batido de chocolate',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
	        prop = { model = `ng_proc_ojbot_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x batido de chocolate'
	    },
	},

	['baconfries'] = {
	    label = 'patatas fritas con bacon',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `prop_food_chips`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x patatas fritas con bacon'
	    },
	},

	['bombones'] = {
		label = 'caja de chocolates',
		weight = 220,
		client = {
			status = {hunger = 75000, thirst = -10000, drunk = -80000, },
			anim = 'eating',
			prop = { model = `prop_choc_ego`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x caja de chocolates'
		},
	},

	['cookie_chips'] = {
		label = 'galletas con chips de chocolate',
		weight = 220,
		client = {
			status = {hunger = 75000, thirst = -10000, drunk = -80000, },
			anim = 'eating',
			prop = { model = `prop_choc_ego`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x galletas con chips de chocolate'
		},
	},


	['lasagna'] = {
	    label = 'lasagna',
	    weight = 220,
	    client = {
	        status = {hunger = 125000, thirst = -15000, },
	        anim = 'eating',
	        prop = { model = `a_c_fish`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
	        usetime = 2500,
	        notification = 'Consumiste 1x lasagna'
	    },
	},

	['waffles'] = {
		label = 'waffles',
		weight = 220,
		client = {
			status = {hunger = 70000, drunk = -75000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `v_res_cakedome`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x waffles'
		},
	},

	['motelpinkcard'] = {
        label = 'tarjeta de acceso Motel Pink',
        stack = true,
        close = true,
        weight = 1,
    },


	['ammonium_nitrate'] = {
		label = 'ammonium nitrate',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cannabis'] = {
		label = 'cannabis',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['carbon'] = {
		label = 'carbon',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cocaine'] = {
		label = 'cocaine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['codeine'] = {
		label = 'codeine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drink_sprite'] = {
		label = 'sprite',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drug_ecstasy'] = {
		label = 'ecstasy',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drug_lean'] = {
		label = 'lean',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drug_lsd'] = {
		label = 'lsd',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drug_meth'] = {
		label = 'meth',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['green_gelato_cannabis'] = {
		label = 'green gelato cannabis',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['hydrogen'] = {
		label = 'hydrogen',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['ice'] = {
		label = 'ice',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['jolly_ranchers'] = {
		label = 'jolly ranchers',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['liquid_sulfur'] = {
		label = 'liquid sulfur',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['muriatic_acid'] = {
		label = 'muriatic acid',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['nitrogen'] = {
		label = 'nitrogen',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['opium'] = {
		label = 'opium',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['oxygen'] = {
		label = 'oxygen',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['pseudoefedrine'] = {
		label = 'pseudoefedrine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['red_sulfur'] = {
		label = 'red sulfur',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['sodium_hydroxide'] = {
		label = 'sodium hydroxide',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['windowchecker'] = {
		label = 'comprobador de lunas',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['smoke_grinder'] = {
		label = 'Grinder',
		weight = 100,
		stack = true,
		close = true,
		description = nil
	},

	['smoke_filters'] = {
		label = 'Filtros de tabaco',
		weight = 50,
		stack = true,
		close = true,
		description = nil
	},

	['fernetcoca'] = {
		label = 'Fernet con Coca',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 fernet con coca'
		},
	},
	
	['whiscola'] = {
		label = 'Whiscola',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 whiscola'
		},
	},
		
	['cubalibre'] = {
		label = 'Cuba libre',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 cuba libre'
		},
	},
	
	['vasotequila'] = {
		label = 'Vaso de tequila',
		weight = 220,
		client = {
			status = {hunger = -30000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 vaso de tequila'
		},
	},
	
	['caipirina'] = {
		label = 'Caipiriña',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 caipiriña'
		},
	},
	
	['caipirinafresa'] = {
		label = 'Caipiriña con fresa',
		weight = 220,
		client = {
			status = {hunger = -9000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_tumbler_01b_bar`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 caipiriña con fresa'
		},
	},
	
	['cocoloco'] = {
		label = 'Coco loco',
		weight = 220,
		client = {
			status = {hunger = -3000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_pinacolada`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 coco loco'
		},
	},
	
	['vasoagua'] = {
		label = 'Vaso de agua',
		weight = 500,
		client = {
			status = { thirst = 150000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Te has bebido x1 vaso de agua'
		}
	},
	
	['vasocerveza'] = {
		label = 'Vaso de cerveza',
		weight = 220,
		client = {
			status = {hunger = -30000, drunk = 300000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 vaso de tequila'
		},
	},
	
	--Botellas--
	
	['fernet'] = {
		label = 'Fernet',
		weight = 220,
		client = {
			status = {hunger = -30000, drunk = 350000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_bottle_cognac`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x botella de Fernet'
		},
	},
	
	['cocavidrio'] = {
		label = 'Coca de vidrio',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_beerbottle_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 Coca de vidrio'
		},
	},
	
	['spritevidrio'] = {
		label = 'Sprite de vidrio',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_beerbottle_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 Sprite de vidrio'
		},
	},
	
	['fantavidrio'] = {
		label = 'Fanta de vidrio',
		weight = 220,
		client = {
			status = {hunger = 20000, thirst = 100000, drunk = -100000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `ng_proc_beerbottle_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te has bebido x1 Fanta de vidrio'
		},
	},
	
	['botellavino'] = {
		label = 'Botella de vino',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_bottle_macbeth`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x botella de vino'
		},
	},
	
	['botellaron'] = {
		label = 'Botella de ron',
		weight = 220,
		client = {
			status = {hunger = -20000, drunk = 200000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_bottle_brandy`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x botella de ron'
		},
	},
	
	--Bebidas sin alcohol--
	
	['zumofresa'] = {
		label = 'vaso de zumo de fresa',
		weight = 220,
		client = {
			status = {hunger = -20000, thirst = 180000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de zumo de fresa'
		},
	},
	
		['zumonaranja'] = {
		label = 'vaso de zumo de naranja',
		weight = 220,
		client = {
			status = {hunger = -20000, thirst = 180000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_plastic_cup_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x vaso de zumo de naranja'
		},
	},
	
	--Otros-- 
	
	['medialuna'] = {
		label = 'Medialuna de mantequilla',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -15000,},
			anim = 'eating',
			prop = { model = `ng_proc_food_nana1a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x medialuna de mantequilla'
		},
	},
	
	['brownie'] = {
		label = 'Brownie',
		weight = 220,
		client = {
			status = {hunger = 50000, thirst = -5000, drunk = -75000, },
			anim = 'eating',
			prop = { model = `prop_donut_02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x brownie'
		},
	},
	
	['rebanadapizza'] = {
		label = 'Rebanada de pizza',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -10000, },
			anim = 'eating',
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x rebanada de pizza'
		},
	},
	
	['tostados'] = {
		label = 'Tostados de jamón y queso',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -10000, },
			anim = 'eating',
			prop = { model = `v_res_fa_bread03`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x tostados de jamón y queso'
		},
	},
	
	['mani'] = {
		label = 'Maní salado',
		weight = 220,
		client = {
			status = {hunger = 100000, thirst = -30000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_chips01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x maní salado'
		},
	},
	
	['picada'] = {
		label = 'Tabla de jamón y queso',
		weight = 220,
		client = {
			status = {hunger = 200000, thirst = -15000, },
			anim = 'eating',
			prop = { model = `ng_proc_food_chips01c`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Consumiste 1x Picada'
		},
	},

	['racing_tablet'] = {
		label = 'tablet de competiciones',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['hoja_cocaina'] = {
		label = 'Hoja de cocaína',
		weight = 1,
		stack = true,
		close = true,
		description = 'Extraida de la planta Erythroxylum coca'
	},
	
	['hongo'] = {
		label = 'Hongo',
		weight = 1,
		stack = true,
		close = true,
		description = 'Hongo alucinógeno'
	},
	
	['tijera'] = {
		label = 'tijera',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},


	['air_suspension'] = {
		label = 'air suspension',
		weight = 2500,
		stack = true,
		close = true,
		description = nil
	},

	['suspension_control'] = {
		label = 'air suspension control',
		weight = 80,
		stack = true,
		close = true,
		description = nil
	},

	['a4sheets'] = {
		label = 'paquete de folios',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['printerdocument'] = {
		label = 'documento impreso',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['detector'] = {
		label = 'detector de metales',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},

	['eventcalendar'] = {
		label = 'calendario de eventos',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
}