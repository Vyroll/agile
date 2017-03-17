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

Shipping.delete_all
Shipping.create(name: 'Not set', price: '10')
Shipping.create(name: 'FedEx', price: '20')
Shipping.create(name: 'InPost', price: '0')

Category.delete_all
Category.create(name: 'cat1')
Category.create(name: 'cat2')
Category.create(name: 'cat3')

Product.delete_all
Product.create(name: 'prod1', description: 'prod1prod1prod1prod1prod1prod1prod1prod1',stock: '11', category_id: '1', price: '11' )
Product.create(name: 'prod2', description: 'prod2prod2prod2prod2prod2prod2prod2prod2',stock: '1', category_id: '2', price: '1' )
Product.create(name: 'prod3', description: 'prod3prod3prod3prod3prod3prod3prod3prod3',stock: '12', category_id: '2', price: '123' )