# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Purchase.destroy_all
# User.destroy_all
# Book.destroy_all

10.times do
    User.create(name: Faker::Name.name)
end

10.times do
    Book.create(author: Faker::Book.author, name: Faker::Book.title)
end

status = ['disponible', 'comprado', 'reservado']

3.times do
    Purchase.create(quantity: rand(1..4), status: status.sample(), price: rand(1500..5000), user_id: rand(1..10), book_id: rand(1..10))
end

