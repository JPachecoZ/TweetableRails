# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start seeding users"

user = User.create(name: "Javier Pacheco", username: "JPachecoZ", email: "jepach@gmail.com", password: "letmein")
user.tweets.create(body:"Hola a todos! Soy nuevo aqui. Como es la nuez?")

user = User.new(name: "Erina Nakiri", username: "ENakiri", email: "erina@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Erina.jpg'), filename: 'Erina.jpg')
user.save

user.tweets.create(body:"No te conozco. No me hables como si me conocieras.")

user = User.new(name: "Alice Nakiri", username: "ANakiri", email: "alice@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Alice.jpg'), filename: 'Alice.jpg')
user.save

user.tweets.create(body:"Holaaa Javi-kun!")

user = User.new(name: "Soy Goku", username: "Goku", email: "kakarotto@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/goku.png'), filename: 'goku.png')
user.save

user.tweets.create(body:"Hola! Soy Goku! Kamehame haaaaaaaaaaaaaaaaa")

user = User.new(name: "Yellow rabbid", username: "Pikachu", email: "pikachu@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Pikachu.jpg'), filename: 'Pikachu.jpg')
user.save

user.tweets.create(body:"Pika pi?")

user = User.new(name: "Player 456", username: "Unknown", email: "p456@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Player456.jpeg'), filename: 'Player456.jpeg')
user.save

user.tweets.create(body:"Quieres saber por que me pinte el pelo de rojo?")

user = User.new(name: "The Great Thanus", username: "Thanos", email: "thanos@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Thanos.jpeg'), filename: 'Thanos.jpeg')
user.save

user.tweets.create(body:"Que año es este?")

user = User.new(name: "Yisus", username: "Yisus", email: "yisus@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/Yisus.png'), filename: 'Yisus.png')
user.save

user.tweets.create(body:"Hola a todos! Ya estoy aqui!")

user = User.new(name: "Want a punch?", username: "Saitama", email: "saitama@mail.com", password: "letmein")
user.avatar.attach(io: File.open('app/assets/images/saitama.png'), filename: 'saitama.png')
user.save

user.tweets.create(body:"Holi?")

puts "End of user seeding"

