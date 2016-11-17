User.delete_all
Tag.delete_all
Post.delete_all

teacher = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') # user_id: 1
student = User.create!(username: "justin", email: "jdizonXXX@gmail.com", role: "student", password: 'password')

ruby_tag = teacher.tags.create(name: 'Ruby')
rspec_tag = teacher.tags.create(name: 'RSpec')
self_development_tag = teacher.tags.create(name: 'Self-Development')
recursion_tag = teacher.tags.create(name: 'Recursion')
regex_tag = teacher.tags.create(name: 'RegEx')
git_tag = teacher.tags.create(name: 'Git')
better_code_tag = teacher.tags.create(name: 'Better Code')
debug_tag = teacher.tags.create(name: 'Debugging')


# Phase 1

## Text
  post1 = teacher.posts.create(title: 'RSpec Basics', decription: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', verified: true)
  post2 = teacher.posts.create(title: 'Regular Expressions', decription: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', verified: true)
  post3 = teacher.posts.create(title: 'Ruby Style Guide', decription: "Airbnb's Ruby Style Guide" , media_type: 'text', url: 'https://github.com/airbnb/ruby', verified: true)
  post4 = teacher.posts.create(title: 'Intro and Hints for Writing Ruby', decription: "How to use the interactive ruby shell" , media_type: 'text', url: 'http://www.rubyinside.com/irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html', verified: true)
  post5 = teacher.posts.create(title: 'Git shortcuts', decription: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', verified: true)
  post6 = teacher.posts.create(title: "DBC's Three Agreements", decription: "An outline to DBC's 3 agreements from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/three-agreements.md', verified: true)
  post7 = teacher.posts.create(title: "DBC Student Handbook: Policies", decription: "An outline to DBC's policies from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook', verified: true)
  post8 = teacher.posts.create(title: "DBC Student Handbook: Becoming a World-class Beginner", decription: "Some words-of-wisdom for new students." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook/blob/master/words-of-wisdom.md', verified: true)  
  post9 = teacher.posts.create(title: "Fixed vs growth mindset", decription: "Some words-of-wisdom for new students." , media_type: 'text', url: 'http://qedfoundation.org/wp-content/uploads/2012/12/dweck_mindset.png', verified: true)
  post10 = teacher.posts.create(title: "Writing Readable Code", decription: "An outline to writing easy-to-read code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/writing-readable-code/README.md', verified: true)
  post11 = teacher.posts.create(title: "Code smells", decription: "An outline on how to avoid code smells" , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/code_smells.md', verified: true)
  post12 = teacher.posts.create(title: "Readable Code", decription: "A written guide on basic practices for writing clean, readable code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/readable_code.md', verified: true)
  post13 = teacher.posts.create(title: "Regular Expressions", decription: "Quick breakdown on Regular Expressions." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/regular_expressions.md', verified: true)
  post14 = teacher.posts.create(title: "More information on Fixed vs Growth Mindsets", decription: "A nice write-up on fixed vs growth mindsets" , media_type: 'text', url: 'http://michaelgr.com/2007/04/15/fixed-mindset-vs-growth-mindset-which-one-are-you/', verified: true)
  post15 = teacher.posts.create(title: "Debugging", decription: "Breakdown on debugging techniques and tips" , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/debugging/README.md', verified: true)
  post16 = teacher.posts.create(title: "Ruby Scope", decription: "Write-up on scope in the Ruby language" , media_type: 'text', url: 'https://github.com/devbootcamp/reference/wiki/Ruby-Scope', verified: true)
  post17 = teacher.posts.create(title: "The King and his rocks", decription: "A fun little story to describe recursion" , media_type: 'text', url: 'http://ruby.bastardsbook.com/chapters/recursion/', verified: true)


# user = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') # user_id: 1
# User.create!(username: "the_hunter", email: "hunter@devbootcamp.com", admin_access: true) # user_id: 2
# User.create!(username: "team_account", email: "clientproject@devbootcamp.com", admin_access: true) # user_id: 3

 ## Video
  post18 = teacher.posts.create(title: "Sam Blackman's Intro to RSpec", description: "A video demonstrating RSpec.", media_type: 'video', url: 'https://talks.devbootcamp.com/intro-to-rspec', verified: true )
  post19 = teacher.posts.create(title: 'Jim Weirch - Roman Numerals Kata', decription: "Live code demonstration of Roman Numerals Challenge" , media_type: 'video', url: 'https://www.youtube.com/watch?v=983zk0eqYLY', verified: true)
  post20 = teacher.posts.create(title: 'How much time do we truly spend coding? ', decription: "Live code demonstration a professional developer workflow" , media_type: 'video', url: 'https://talks.devbootcamp.com/how-much-time-do-we-truly-spend-coding', verified: true)
  post21 = teacher.posts.create(title: "Phillip Goldin on Distorted Views of the Self", decription: "A video explaining the distorted views we have of ourselves." , media_type: 'video', url: 'http://www.youtube.com/watch?v=bKtBxxR0JRM#t=1243', verified: true)
  post22 = teacher.posts.create(title: "A New Way to Respond to 'Failure' - Tales of overcoming the Superego", decription: "A motivational video." , media_type: 'video', url: 'https://www.youtube.com/watch?v=_tjYoKCBYag', verified: true)

PostTag.create(post_id: post1.id, tag_id: rspec_tag.id)
PostTag.create(post_id: post2.id, tag_id: regex_tag.id)
PostTag.create(post_id: post3.id, tag_id: ruby_tag.id)
PostTag.create(post_id: post4.id, tag_id: ruby_tag.id)
PostTag.create(post_id: post5.id, tag_id: git_tag.id)
PostTag.create(post_id: post6.id, tag_id: self_development_tag.id)
PostTag.create(post_id: post7.id, tag_id: self_development_tag.id)
PostTag.create(post_id: post8.id, tag_id: self_development_tag.id)
PostTag.create(post_id: post9.id, tag_id: self_development_tag.id)
PostTag.create(post_id: post10.id, tag_id: better_code_tag.id)
PostTag.create(post_id: post11.id, tag_id: better_code_tag.id)
PostTag.create(post_id: post12.id, tag_id: better_code_tag.id)
PostTag.create(post_id: post13.id, tag_id: better_code_tag.id)
PostTag.create(post_id: post14.id, tag_id: regex_tag.id)
PostTag.create(post_id: post15.id, tag_id: debug_tag.id)
PostTag.create(post_id: post16.id, tag_id: ruby_tag.id)
PostTag.create(post_id: post17.id, tag_id: recursion_tag.id)
PostTag.create(post_id: post18.id, tag_id: rspec_tag.id)
PostTag.create(post_id: post19.id, tag_id: ruby_tag.id)
PostTag.create(post_id: post20.id, tag_id: better_code_tag.id)
PostTag.create(post_id: post21.id, tag_id: self_development_tag.id)
PostTag.create(post_id: post22.id, tag_id: self_development_tag.id)



















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
user.tags.create(name: "Ruby")

# Tag.create!(name: "javascript", user_id: 1, post_id: 1) # tag_id: 2



