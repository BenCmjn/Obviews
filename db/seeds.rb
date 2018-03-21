# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(firstname:"Jules", lastname:"Rigomont", email:"rigomontj@gmail.com", password:"coucou", password_confirmation:"coucou")
user1.save
board1 = Board.create(user_id: user1.id)

user2= User.new(firstname:"Benjamin", lastname:"Calméjane", email:"bencmjn@gmail.com", password:"coucou", password_confirmation:"coucou")
user2.save
board2 = Board.create(user_id: user2.id)

user3 = User.new(firstname:"Charles", lastname:"Dacquay", email:"charlesdacquay@gmail.com", password:"coucou", password_confirmation:"coucou")
user3.save
board3 = Board.create(user_id: user3.id)

user4 = User.new(firstname:"Félix", lastname:"Gaudé", email:"rigomontj@gmail.com", password:"coucou", password_confirmation:"coucou")
user4.save
board4 = Board.create(user_id: user4.id)

user5 = User.new(firstname:"Ségolène", lastname:"Alquier", email:"segolenealquier@gmail.com", password:"coucou", password_confirmation:"coucou")
user5.save
board5 = Board.create(user_id: user5.id)

user6 = User.new(firstname:"Thomas", lastname:"Darrigade", email:"thomasdarrigade@gmail.com", password:"coucou", password_confirmation:"coucou")
user6.save
board6 = Board.create(user_id: user6.id)
