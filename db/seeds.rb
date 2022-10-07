# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

david = User.create( username: 'David', password: 'password' )
hobby_1 = Hobby.create( hobbies: 'Playing Cricket', likes: 1, user_id: david.id )
hobby_2 = Hobby.create( hobbies: 'Reading Bookd', likes: 2, user_id: david.id )
