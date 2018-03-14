# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(firstname:"Super", lastname:"Man", email:"a@a.a", password:"coucou", password_confirmation:"coucou")
user1.save

board1 = Board.new(user_id: user1.id)
board1.save


user2 = User.new(firstname:"Spider", lastname:"Man", email:"b@b.b", password:"coucou", password_confirmation:"coucou")
user2.save

board2 = Board.new(user_id: user2.id)
board2.save


user3 = User.new(firstname:"Iron", lastname:"Man", email:"c@c.c", password:"coucou", password_confirmation:"coucou")
user3.save

board3 = Board.new(user_id: user3.id)
board3.save


user4 = User.new(firstname:"Bat", lastname:"Man", email:"d@d.d", password:"coucou", password_confirmation:"coucou")
user4.save

board4 = Board.new(user_id: user4.id)
board4.save