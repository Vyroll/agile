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
OrderStatus.create(name: 'In Progress')
OrderStatus.create(name: 'Placed')
OrderStatus.create(name: 'Shipped')
OrderStatus.create(name: 'Cancelled')