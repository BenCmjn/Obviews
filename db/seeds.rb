# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(bio: "Mais cette feature c'est 5min, montre en main hein, t'inquiètes...", firstname:"Jules", lastname:"Rigomont", email:"julesrigomont@gmail.com", password:"coucou", password_confirmation:"coucou")
user1.save

user2= User.new(bio: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAhhhh!!!!!", firstname:"Benjamin", lastname:"Calméjane", email:"benjamincalmejane@gmail.com", password:"coucou", password_confirmation:"coucou")
user2.save

user3 = User.new(bio: "T'es le meilleur.", firstname:"Charles", lastname:"Dacquay", email:"charlesdacquay@gmail.com", password:"coucou", password_confirmation:"coucou")
user3.save

user4 = User.new(bio: "Alors sinon on peut faire des stickers THP...", firstname:"Félix", lastname:"Gaudé", email:"felixgaude@gmail.com", password:"coucou", password_confirmation:"coucou")
user4.save

user5 = User.new(bio: "Salut! Tu vas au CIDJ vendredi?", firstname:"Ségolène", lastname:"Alquier", email:"segolenealquier@gmail.com", password:"coucou", password_confirmation:"coucou")
user5.save

user6 = User.new(bio: "Algo floco is my credo.", firstname:"Antonin", lastname:"Siguier", email:"antoninsiguier@gmail.com", password:"coucou", password_confirmation:"coucou")
user6.save

user7 = User.new(bio: "Mailjet c'est vraiment génial!!!", firstname:"Thomas", lastname:"Darrigade", email:"thomasdarrigade@gmail.com", password:"coucou", password_confirmation:"coucou")
user7.save
