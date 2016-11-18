User.delete_all
Tag.delete_all
Post.delete_all

teacher = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') # user_id: 1
student = User.create!(username: "justin", email: "jdizonXXX@gmail.com", role: "student", password: 'password')

ruby_tag = teacher.tags.create(name: 'Ruby')
rspec_tag = teacher.tags.create(name: 'RSpec')
rails_tag = teacher.tags.create(name: 'Rails')
self_development_tag = teacher.tags.create(name: 'Self-Development')
recursion_tag = teacher.tags.create(name: 'Recursion')
regex_tag = teacher.tags.create(name: 'RegEx')
git_tag = teacher.tags.create(name: 'Git')
better_code_tag = teacher.tags.create(name: 'Better Code')
debug_tag = teacher.tags.create(name: 'Debugging')


# Phase 1

## Text
  post1 = teacher.posts.create(title: 'RSpec Basics', description: 'An introductory guide to RSpec syntax and how to incorporate testing within your development', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/rspec/README.md', verified: true)
  post2 = teacher.posts.create(title: 'Regular Expressions', description: 'An introductory guide to Regular Expressions', media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/regular-expressions/README.md', verified: true)
  post3 = teacher.posts.create(title: 'Ruby Style Guide', description: "Airbnb's Ruby Style Guide" , media_type: 'text', url: 'https://github.com/airbnb/ruby', verified: true)
  post4 = teacher.posts.create(title: 'Intro and Hints for Writing Ruby', description: "How to use the interactive ruby shell" , media_type: 'text', url: 'http://www.rubyinside.com/irb-lets-bone-up-on-the-interactive-ruby-shell-1771.html', verified: true)
  post5 = teacher.posts.create(title: 'Git shortcuts', description: "A git and git flow cheat sheet" , media_type: 'text', url: 'https://github.com/ArslanBilal/Git-Cheat-Sheet', verified: true)
  post6 = teacher.posts.create(title: "DBC's Three Agreements", description: "An outline to DBC's 3 agreements from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/three-agreements.md', verified: true)
  post7 = teacher.posts.create(title: "DBC Student Handbook: Policies", description: "An outline to DBC's policies from the student handbook." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook', verified: true)
  post8 = teacher.posts.create(title: "DBC Student Handbook: Becoming a World-class Beginner", description: "Some words-of-wisdom for new students." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/student-handbook/blob/master/words-of-wisdom.md', verified: true)  
  post9 = teacher.posts.create(title: "Fixed vs growth mindset", description: "Some words-of-wisdom for new students." , media_type: 'text', url: 'http://qedfoundation.org/wp-content/uploads/2012/12/dweck_mindset.png', verified: true)
  post10 = teacher.posts.create(title: "Writing Readable Code", description: "An outline to writing easy-to-read code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/writing-readable-code/README.md', verified: true)
  post11 = teacher.posts.create(title: "Code smells", description: "An outline on how to avoid code smells" , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/code_smells.md', verified: true)
  post12 = teacher.posts.create(title: "Readable Code", description: "A written guide on basic practices for writing clean, readable code." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/readable_code.md', verified: true)
  post13 = teacher.posts.create(title: "Regular Expressions", description: "Quick breakdown on Regular Expressions." , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/resources/regular_expressions.md', verified: true)
  post14 = teacher.posts.create(title: "More information on Fixed vs Growth Mindsets", description: "A nice write-up on fixed vs growth mindsets" , media_type: 'text', url: 'http://michaelgr.com/2007/04/15/fixed-mindset-vs-growth-mindset-which-one-are-you/', verified: true)
  post15 = teacher.posts.create(title: "Debugging", description: "Breakdown on debugging techniques and tips" , media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-1-guide/blob/sf-master/readings/debugging/README.md', verified: true)
  post16 = teacher.posts.create(title: "Ruby Scope", description: "Write-up on scope in the Ruby language" , media_type: 'text', url: 'https://github.com/devbootcamp/reference/wiki/Ruby-Scope', verified: true)
  post17 = teacher.posts.create(title: "The King and his rocks", description: "A fun little story to describe recursion" , media_type: 'text', url: 'http://ruby.bastardsbook.com/chapters/recursion/', verified: true)
  post23 = teacher.posts.create(title: "Cool Stuff You'll Love In Rails", description: "Stuff for controllers, routes, and views", media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-3-guide/blob/sf-chi/resources/cool-stuff-in-rails.md', verified: true)
  post24 = teacher.posts.create(title: "Rails Coming From Sinatra", description: "Brief overview of Rails and comparison to Sinatra", media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-3-guide/blob/sf-chi/phase-3-prep/rails-sinatra.md', verified: false)
  post25 = teacher.posts.create(title: "Rails Resources", description: "Page with links to different resources", media_type: 'text', url: 'https://github.com/sf-coyotes-2016/phase-3-guide/blob/sf-chi/resources/rails-resources.md', verified: false)
# user = User.create!(username: "maxiboy", email: "maxwell.mathews@devbootcamp.com", role: "teacher", password: 'password') # user_id: 1
# User.create!(username: "the_hunter", email: "hunter@devbootcamp.com", admin_access: true) # user_id: 2
# User.create!(username: "team_account", email: "clientproject@devbootcamp.com", admin_access: true) # user_id: 3

 ## Video
  post18 = teacher.posts.create(title: "Sam Blackman's Intro to RSpec", description: "A video demonstrating RSpec.", media_type: 'video', url: 'https://talks.devbootcamp.com/intro-to-rspec', verified: true )
  post19 = teacher.posts.create(title: 'Jim Weirch - Roman Numerals Kata', description: "Live code demonstration of Roman Numerals Challenge" , media_type: 'video', url: 'https://www.youtube.com/watch?v=983zk0eqYLY', verified: true)
  post20 = teacher.posts.create(title: 'How much time do we truly spend coding? ', description: "Live code demonstration a professional developer workflow" , media_type: 'video', url: 'https://talks.devbootcamp.com/how-much-time-do-we-truly-spend-coding', verified: true)
  post21 = teacher.posts.create(title: "Phillip Goldin on Distorted Views of the Self", description: "A video explaining the distorted views we have of ourselves." , media_type: 'video', url: 'http://www.youtube.com/watch?v=bKtBxxR0JRM#t=1243', verified: true)
  post22 = teacher.posts.create(title: "A New Way to Respond to 'Failure' - Tales of overcoming the Superego", description: "A motivational video." , media_type: 'video', url: 'https://www.youtube.com/watch?v=_tjYoKCBYag', verified: true)

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
PostTag.create(post_id: post23.id, tag_id: rails_tag.id)
PostTag.create(post_id: post24.id, tag_id: rails_tag.id)







