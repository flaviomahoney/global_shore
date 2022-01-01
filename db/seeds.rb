# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"destroying the seeds..."
Company.destroy_all
User.destroy_all
#Course.destroy_all
puts"seeds destroyed. Creating new seeds..."

user1 = User.new(email: "flavio@gmail.com", password: '123456', username: "flaviom4", role: "admin")
user1.save
user2 = User.new(email: "bia@gmail.com", password: '123456', username: "bia123", role: "admin")
user2.save

user3 = User.new(email: "joao@gmail.com", password: '123456', username: "joao123", role: "cotador")
user3.save
user4 = User.new(email: "renato@gmail.com", password: '123456', username: "renato123", role: "cotador")
user4.save

user5 = User.new(email: "vitor@gmail.com", password: '123456', username: "vitor123", role: "vendedor")
user5.save
user6 = User.new(email: "eduardo@gmail.com", password: '123456', username: "dudu123", role: "vendedor")
user6.save

user7 = User.new(email: "yasmin@gmail.com", password: '123456', username: "yas123", role: "financeiro")
user7.save
user8 = User.new(email: "marcela@gmail.com", password: '123456', username: "marcela123", role: "financeiro")
user8.save


company1 = Company.new(name: "Kadora", contact: "Renato", user: User.all.sample)
company1.save

company2 = Company.new(name: "Petrobras", contact: "Roberto", user: User.all.sample)
company2.save

company3 = Company.new(name: "CBO", contact: "Jonathan", user: User.all.sample)
company3.save