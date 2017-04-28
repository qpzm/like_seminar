# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create email: 'admin1@likelion.com', password: "123456", name: "elliot"
User.create email: 'admin2@likelion.com', password: "123456", name: "jenny"
User.create email: 'admin3@likelion.com', password: "123456", name: "joe"
User.create email: 'admin4@likelion.com', password: "123456", name: "stevie"
User.create email: 'admin5@likelion.com', password: "123456", name: "matt"

