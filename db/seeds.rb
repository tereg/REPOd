# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Tag.delete_all
Post.delete_all

user = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher") # user_id: 1
# User.create!(username: "the_hunter", email: "hunter@devbootcamp.com", admin_access: true) # user_id: 2
# User.create!(username: "team_account", email: "clientproject@devbootcamp.com", admin_access: true) # user_id: 3



user.posts.create!(title: "Reduce!", description: "short blog entry detailing the use of reduce",media_type: "text", url: "http://nishacodes.tumblr.com/post/80652377352/using-reduce-aka-inject-in-ruby", user_id: 1, verified: true)

# Tag.create!(name: "javascript", user_id: 1, post_id: 1) # tag_id: 2



