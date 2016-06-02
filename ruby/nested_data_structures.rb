#highway full of car with family, vans with people and furniture, car with people and pets, bus with people

highway  = {
	'Car' => [
		'dad',
		'kids'
		],
	'Van' => [
		'mover',
		'furniture',
		],
	'Red Car' => [
		'mother',
		'baby',
		'dog'
		],
	'Bus' => [
		'driver',
		'passenger1',
		'passenger2',
		'passenger3'
	]

}

# p highway['Van'][0]
# returns mover

# highway['Car'].push('groceries')
# adds groceris to 'car'

# highway['Bus'].push('passenger4', 'passenger5')
# adds 2 more passengers to our 'Bus'

# highway.store(:Motorcycle, 'rider')
# p highway
# adds the key 'Motorcyle' with the value 'rider' to our hash 'highway'