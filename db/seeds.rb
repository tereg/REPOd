User.delete_all
Tag.delete_all
Post.delete_all

teacher = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher") # user_id: 1
student = User.create!(username: "justin", email: "jdizonXXX@gmail.com", role: "student")

# Phase 1

## Text
  teacher.posts.create(title: 'RSpec Basics', decription: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', verified: true)
  teacher.posts.create(title: 'Regular Expressions', decription: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', verified: true)
  teacher.posts.create(title: 'Ruby Style Guide', decription: "Airbnb's Ruby Style Guide" , media_type: 'text', url: 'https://github.com/airbnb/ruby', verified: true)
  teacher.posts.create(title: 'Intro and Hints for Writing Ruby', decription: "How to use the interactive ruby shell" , media_type: 'text', url: 'http://www.rubyinside.com/irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html', verified: true)
  teacher.posts.create(title: 'Git shortcuts', decription: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', verified: true)
  teacher.posts.create(title: "DBC's Three Agreements", decription: "An outline to DBC's 3 agreements from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/three-agreements.md', verified: true)
  teacher.posts.create(title: "DBC Student Handbook: Policies", decription: "An outline to DBC's policies from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook', verified: true)
  teacher.posts.create(title: "DBC Student Handbook: Becoming a World-class Beginner", decription: "Some words-of-wisdom for new students." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook/blob/master/words-of-wisdom.md', verified: true)  
  teacher.posts.create(title: "Fixed vs growth mindset", decription: "Some words-of-wisdom for new students." , media_type: 'text', url: 'http://qedfoundation.org/wp-content/uploads/2012/12/dweck_mindset.png', verified: true)
  teacher.posts.create(title: "Writing Readable Code", decription: "An outline to writing easy-to-read code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/writing-readable-code/README.md', verified: true)
  teacher.posts.create(title: "Code smells", decription: "An outline on how to avoid code smells" , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/code_smells.md', verified: true)
  teacher.posts.create(title: "Readable Code", decription: "A written guide on basic practices for writing clean, readable code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/readable_code.md', verified: true)

# user = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') # user_id: 1
# User.create!(username: "the_hunter", email: "hunter@devbootcamp.com", admin_access: true) # user_id: 2
# User.create!(username: "team_account", email: "clientproject@devbootcamp.com", admin_access: true) # user_id: 3

 ## Video
  teacher.posts.create(title: "Sam Blackman's Intro to RSpec", description: "A video demonstrating RSpec.", media_type: 'video', url: 'https://talks.devbootcamp.com/intro-to-rspec', verified: true )
  teacher.posts.create(title: 'Jim Weirch - Roman Numerals Kata', decription: "Live code demonstration of Roman Numerals Challenge" , media_type: 'video', url: 'https://www.youtube.com/watch?v=983zk0eqYLY', verified: true)
  teacher.posts.create(title: 'How much time do we truly spend coding? ', decription: "Live code demonstration a professional developer workflow" , media_type: 'video', url: 'https://talks.devbootcamp.com/how-much-time-do-we-truly-spend-coding', verified: true)
















# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# user = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher") # user_id: 1
# # User.create!(username: "the_hunter", email: "hunter@devbootcamp.com", admin_access: true) # user_id: 2
# # User.create!(username: "team_account", email: "clientproject@devbootcamp.com", admin_access: true) # user_id: 3



# user.posts.create!(title: "Reduce!", description: "short blog entry detailing the use of reduce",media_type: "text", url: "http://nishacodes.tumblr.com/post/80652377352/using-reduce-aka-inject-in-ruby", user_id: 1, verified: true)

# # Tag.create!(name: "javascript", user_id: 1, post_id: 1) # tag_id: 2
=======
user.tags.create(name: "Ruby")

# Tag.create!(name: "javascript", user_id: 1, post_id: 1) # tag_id: 2
>>>>>>> abef27555ae8300ca070cb900d3b6df63d5c7a2a



