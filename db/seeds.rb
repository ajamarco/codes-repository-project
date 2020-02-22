# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
m = User.create(name: "Mustafa")
a = User.create(name: "Alex")

Post.create(title:"first post", content: "first_contnet", user_id: m.id)
Post.create(title:"secopost", content: "secon_contnet", user_id: a.id)