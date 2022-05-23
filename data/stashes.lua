QueServer = GetConvar("server_number", "1")
isTencity = (QueServer == "TENCITY")

return {
	{
		coords = vec3(452.3, -991.4, 30.7),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Abrir taquilla personal'
		},
		name = 'policelocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir taquilla personal'
		},
		name = 'emslocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

	{
		coords = vec3(18.6, -910.49, 33.9),
		target = {
			loc = vec3(18.6, -910.49, 33.9),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir taquilla personal'
		},
		name = 'fiblocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(23.36, -937.71, 29.9),
		target = {
			loc = vec3(23.36, -937.71, 29.9),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir almacén FIB'
		},
		name = 'fibstorage',
		label = 'Almacén FIB',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(-441.6, 6008.31, 36.69),
		target = {
			loc = vec3(-441.6, 6008.31, 36.69),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir almacén LSSD'
		},
		name = 'lssdstorage',
		label = 'Almacén LSSD',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(-453.08, 6010.96, 31.84),
		target = {
			loc = vec3(-453.08, 6010.96, 31.84),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Taquillas personales' -- LSSD
		},
		name = 'lssdlocker',
		label = 'Taquilla personal',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},


	{
		coords = vec3(-176.38, 311.27, 97.99),
		target = {
			loc = vec3(-176.38, 311.27, 97.99),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir despensa'
		},
		name = 'palaciowei1',
		label = 'Despensa del Palacio Wei',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['palaciowei'] = 0}
	},

	{
		coords = vec3(826.66, -110.68, 79.77),
		target = {
			loc = vec3(826.66, -110.68, 79.77),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir despensa'
		},
		name = 'cocktailbar1',
		label = 'Despensa del Cocktail Bar',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['cocktailbar'] = 0}
	},

	{
		coords = vec3(105.5206, -1303.0236, 28.7930),
		target = {
			loc = vec3(105.5206, -1303.0236, 28.7930),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir despensa'
		},
		name =  (isTencity and 'paraisocanario1' or 'unicorn1'),
		label = 'Despensa del ' .. (isTencity and 'Paraíso Canario' or 'Vanilla Unicorn'),
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['paraisocanario'] = 0, ['unicorn'] = 0}
	},

	{
		coords = vec3(-1844.05, -1189.74, 14.31),
		target = {
			loc = vec3(-1844.05, -1189.74, 14.31),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Abrir despensa'
		},
		name =  'mesonservando1',
		label = 'Despensa del Mesón de Servando',
		owner = false,
		slots = 70,
		weight = 70000,
		groups = {['mesonservando'] = 0}
	},
}
