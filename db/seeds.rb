# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

John = User.create(username: 'John', password: 'password')
hobby_1 = Hobby.create(hobbies: 'Watching Movies', likes: 1, user_id: John.id)
hobby_2 = Hobby.create(hobbies: 'Reading NewsPaper', likes: 2, user_id: John.id)
