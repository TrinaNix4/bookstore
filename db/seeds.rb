# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Author.destroy_all

Author.create(name:'Anne Rice', genre: 'fantasy')
Author.create(name:'Stephen King', genre: 'horror')

puts "seeded DB"
puts "Author size is #{Author.all.size}"
p Author.all