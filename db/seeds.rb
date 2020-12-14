# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob, alice = User.create!([
  { name: 'Bob'},
  { name: 'Alice'},
])

articles = Article.create!([
  { title: "Bob's first article", content: 'first article', author: bob },
  { title: "Bob's second article", content: 'second article', author: bob },
  { title: "Bob's third article", content: 'third article', author: bob },

  { title: "Alice's first article", content: 'first article', author: alice },
  { title: "Alice's second article", content: 'second article', author: alice },
  { title: "Alice's third article", content: 'third article', author: alice }
])

bob.favorites.create!(article: articles[3])
bob.favorites.create!(article: articles[4])
alice.favorites.create!(article: articles[0])
alice.favorites.create!(article: articles[1])
