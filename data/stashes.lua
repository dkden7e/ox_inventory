QueServer = GetConvar("server_number", "1")
isTencity = (QueServer == "TENCITY")

return {
	{
		coords = vec3(447.81, -996.97, 30.68),
		name = 'policestorage1',
		label = 'Almacén ' .. (isTencity and 'Policía Local' or 'LSPD'),
		owner = false,
		slots = 90,
		weight = 1000000,
		groups = shared.police
	},

	{
		coords = vec3(463.58, -996.25, 30.68),
		name = 'policelocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 250000,
		groups = shared.police2
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		name = 'emslocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 120000,
		groups = {['ambulance'] = 0}
	},

	{
		coords = vec3(18.6, -910.49, 33.9),
		name = 'fiblocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 120000,
		groups = shared.police
	},

	{
		coords = vec3(23.36, -937.71, 29.9),
		name = 'fibstorage',
		label = 'Almacén FIB',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = shared.police
	},

	{
		coords = vec3(-441.6, 6008.31, 36.69),
		name = 'lssdstorage',
		label = 'Almacén LSSD',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = shared.police
	},

	{
		coords = vec3(-453.08, 6010.96, 31.84),
		name = 'lssdlocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 120000,
		groups = shared.police
	},

	{
		coords = vec3(-176.38, 311.27, 97.99),
		name = 'palaciowei1',
		label = 'Despensa del Palacio Wei',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['palaciowei'] = 0}
	},

	{
		coords = vec3(826.66, -110.68, 79.77),
		name = 'cocktailbar1',
		label = 'Despensa del Cocktail Bar',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['cocktailbar'] = 0}
	},

	{
		coords = vec3(105.5206, -1303.0236, 28.7930),
		name =  (isTencity and 'paraisocanario1' or 'unicorn1'),
		label = 'Despensa del ' .. (isTencity and 'Paraíso Canario' or 'Vanilla Unicorn'),
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['paraisocanario'] = 0, ['unicorn'] = 0}
	},

	{
		coords = vec3(-1844.05, -1189.74, 14.31),
		name =  'mesonservando1',
		label = 'Despensa del Mesón de Servando',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['mesonservando'] = 0}
	},

    {
        coords = vec3(-1833.178, -1193.763, 19.18677),
        name =  'mesonservando2',
        label = 'Despensa del Mesón de Servando',
        owner = false,
        slots = 70,
        weight = 1000000,
        groups = {['mesonservando'] = 0}
    },

	{
		coords = vec3(-316.74, -129.51, 39.02),
		name =  'lscustoms1',
		label = 'Almacén del LS Customs La Mesa',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['mechanic'] = 0}
	},

	{
		coords = vec3(-196.37, -1319.14, 31.09),
		name =  'bennys1',
		label = 'Almacén del Benny\'s',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['bennys'] = 0}
	},

	{
		coords = vec3(-705.80, -915.14, 19.11),
		name =  'badu1',
		label = 'Almacén del Badulaque LTD (abajo)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['badu1'] = 0}
	},

	{
		coords = vec3(-703.15, -908.10, 24.03),
		name =  'badu2',
		label = 'Almacén del Badulaque LTD (arriba)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['badu1'] = 0}
	},

	{
		coords = vec3(306.14, -204.31, 54.22),
		name =  'taquillamotel1',
		label = 'Taquilla Pinkage (hab. 1)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(310.05, -194.44, 54.217),
		name =  'taquillamotelpink2',
		label = 'Taquilla Pinkage (hab. 2)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(324.4747, -193.4505, 54.21753),
		name =  'taquillamotelpink3',
		label = 'Taquilla Pinkage (hab. 3)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(306.0264, -220.9846, 58.00879),
		name =  'taquillamotelpink4',
		label = 'Taquilla Pinkage (hab. 4)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(306.2242, -204.3692, 58.00879),
		name =  'taquillamotelpink5',
		label = 'Taquilla Pinkage (hab. 5)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(310.1671, -194.5451, 58.00879),
		name =  'taquillamotelpink6',
		label = 'Taquilla Pinkage (hab. 6)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(324.567, -193.6483, 58.00879),
		name =  'taquillamotelpink7',
		label = 'Taquilla Pinkage (hab. 7)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(340.4308, -228.2637, 54.21753),
		name =  'taquillamotelpink8',
		label = 'Taquilla Pinkage (hab. 8)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(344.1363, -218.2813, 54.21753),
		name =  'taquillamotelpink9',
		label = 'Taquilla Pinkage (hab. 9)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(347.9077, -208.2593, 54.21753),
		name =  'taquillamotelpink10',
		label = 'Taquilla Pinkage (hab. 10)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(326.1363, -228.3824, 58.00879),
		name =  'taquillamotelpink11',
		label = 'Taquilla Pinkage (hab. 11)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(340.589, -228.1319, 58.00879),
		name =  'taquillamotelpink12',
		label = 'Taquilla Pinkage (hab. 12)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(344.4, -218.4396, 58.00879),
		name =  'taquillamotelpink13',
		label = 'Taquilla Pinkage (hab. 13)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(347.8154, -208.2066, 58.00879),
		name =  'taquillamotelpink14',
		label = 'Taquilla Pinkage (hab. 14)',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(-335.6703, 510.0923, 120.4037),
		name =  'taquillacasa1',
		label = 'Taquilla casa 1',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(-2565.758, 3754.602, 13.40735),
		name =  'taquillacasa2',
		label = 'Taquilla casa 2',
		owner = true,
		slots = 70,
		weight = 120000,
	},

	{
		coords = vec3(-132.20, -635.40, 168.82), -- coordenadas del inventario
		name =  'onetravel1', -- nombre interno TIENE QUE SER ÚNICO
		label = 'Taquillas de OneTravel', -- nombre visible del inventario PUEDE REPETIRSE
		owner = true, -- true = inventario personal, diferente contenido para cada persona. false = compartido
		slots = 70, -- nº de huecos posible, 70 es el estándar que tienen todos
		weight = 120000, -- cantidad de peso admitida en gramos (120000g = 120kg), en inventario compartido casi todos tienen 1000kg y en individuales 120kg.
		groups = {['onetravel'] = 0} -- grupo/s que pueden usar este inventario, y rango mínimo. Se puede omitir totalmente la línea para que cualquier persona pueda usarlo, o se pueden poner varios trabajos que puedan (EJEMPLO: groups = {['onetravel'] = 0, ['police'] = 3})
	},

	{
		coords = vec3(-127.80, -633.40, 168.82),
		name =  'onetravel2',
		label = 'Almacén de OneTravel',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['onetravel'] = 0}
	},

	{
		coords = vec3(-2586.52, 1882.43, 167.32),
		name =  'onetravelWestons1',
		label = 'Almacén de OneTravel (Westons 1)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['onetravel'] = 0}
	},

	{
		coords = vec3(-2581.43, 1890.33, 167.32),
		name =  'onetravelWestons1',
		label = 'Almacén de OneTravel (Westons 2)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['onetravel'] = 0}
	},

	{
		coords = vec3(-2581.4, 1892.08, 163.72),
		name =  'onetravelWestonsTaq',
		label = 'Taquillas de OneTravel (Westons)',
		owner = true,
		slots = 70,
		weight = 120000,
		groups = {['onetravel'] = 0}
	},

	{
		coords = vec3(374.5, -1081.76, 29.48),
		name =  (isTencity and 'cafe1020' or 'liquordeli'),
		label = 'Almacén del ' .. (isTencity and 'Café 10-20' or 'Liquor Deli'),
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {[(isTencity and 'cafe1020' or 'liquordeli')] = 0}
	},

	{
		coords = vec3(-433.622, 274.9451, 83.41833),
		name =  'nuevavida1',
		label = 'Almacén del Nueva Vida',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['nuevavida'] = 0}
	},

	{
		coords = vec3(-1489.18, 841.85, 177.0),
		name =  'resortv3-1',
		label = 'Almacén del resort',
		owner = false,
		slots = 70,
		weight = 1000000
	},

	{
		coords = vec3(-1503.34, 838.64, 181.6),
		name =  'resortv3-2',
		label = 'Taquillas del resort',
		owner = true,
		slots = 70,
		weight = 1000000
	},

	{
		coords = vec3(-569.3934, 277.5692, 94.08423),
		name =  'tequilala1',
		label = 'Almacén Tequila-la (azotea)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['tequilala'] = 0}
	},

	{
		coords = vec3(-562.0352, 289.1736, 82.17139),
		name =  'tequilala2',
		label = 'Almacén Tequila-la (bar)',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['tequilala'] = 0}
	},

	{
		coords = vec3(310.7414, 229.1499, 104.3716),
		name =  'dirtyangels1',
		label = 'Almacén del Dirty Angels',
		owner = false,
		slots = 70,
		weight = 1000000,
		groups = {['dirtyangels'] = 0}
	},

	{
		coords = vec3(315.7451, 213.5535, 104.3717),
		name =  'dirtyangelsTaq1',
		label = 'Taquillas del Dirty Angels',
		owner = true,
		slots = 70,
		weight = 120000,
		groups = {['dirtyangels'] = 0}
	},

	{
		coords = vec3(137.26, -1936.22, 15.22),
		name =  'ballas1',
		label = 'Almacén Ballas',
		owner = false,
		slots = 70,
		weight = 1000000
	},

	{
		coords = vec3(1439.1492, -1489.0743, 66.6193),
		name =  'big1',
		label = 'Almacén B.I.G.',
		owner = false,
		slots = 70,
		weight = 1000000
	},

	{
		coords = vec3(531.1359, -1779.7941, 28.4379),
		name =  '52hoover1',
		label = 'Almacén 52 Hoover',
		owner = false,
		slots = 70,
		weight = 1000000
	},

	{
		coords = vec3(-136.83, -1608.65, 35.03),
		name =  'RollingFamilies1',
		label = 'Almacén The Rolling Families',
		owner = false,
		slots = 70,
		weight = 1000000
	},
}
