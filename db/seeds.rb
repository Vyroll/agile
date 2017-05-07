# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.delete_all
# Product.create(name: 'Banana' , price: 0.49)
# Product.create(name: 'Apple' , price: 0.29)
# Product.create(name: 'Carton of Strawberries' , price: 1.99)

OrderStatus.delete_all
OrderStatus.create(name: 'Stan tymczasowy')
OrderStatus.create(name: 'Zamówione')
OrderStatus.create(name: 'Przygotowywane')
OrderStatus.create(name: 'Wysłane')
OrderStatus.create(name: 'Anulowane')
OrderStatus.create(name: 'Dostarczone')

# Shipping.delete_all
# Shipping.create(name: 'Not set', price: '10')
# Shipping.create(name: 'FedEx', price: '20')
# Shipping.create(name: 'InPost', price: '0')
#
# Category.delete_all
# Category.create(name: 'action')
# Category.create(name: 'rpg')
# Category.create(name: 'rts')
#
# Platform.delete_all
# Platform.create(platform: 'PS4')
# Platform.create(platform: 'Xbone')
# Platform.create(platform: 'PcMasterRace')
