# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all
Category.destroy_all
User.destroy_all


neumaticos		= Category.create(name: 'Neumaticos')
asientos 		= Category.create(name: 'Asientos')

manuel 		= User.create(name:'manuel', email:'mlainezb@gmail.com')
beatriz	= User.create(name:'domitila', email:'beatriz@gmail.com')

item1		= Item.create(serial:50, size:10, description: 'Primer Item', category: neumaticos, user:manuel)
item2		= Item.create(serial:60, size:10, description: 'Segundo item', category: neumaticos, user:manuel)
item3		= Item.create(serial:70, size:20, description: 'Tercer item', category: neumaticos, user:beatriz)
item4 = Item.create(serial:4, size:20, description: 'fourth item', category: neumaticos, user:beatriz)