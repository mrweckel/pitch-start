# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(username: "admin", password: "admin")
user.pitches.create(title: Faker::App.name, url: "//www.youtube.com/embed/e2vfxXFqMUc?list=PL8mQO5-D3Q2w_BnYABnqXmq8lHWUTUomE")
user.pitches.create(title: Faker::App.name, url: "//www.youtube.com/embed/kLrWgVPeCzI")
user.pitches.create(title: Faker::App.name, url: "//www.youtube.com/embed/VfsFV7VGBzI")
# p4 = Pitch.create(title: Faker::App.name, url: "/www.youtube.com/embed/e2vfxXFqMUc?list=PL8mQO5-D3Q2w_BnYABnqXmq8lHWUTUomE")
# p5 = Pitch.create(title: Faker::App.name, url: "/www.youtube.com/embed/e2vfxXFqMUc?list=PL8mQO5-D3Q2w_BnYABnqXmq8lHWUTUomE")





user.votes.create(pitch_id: 1) 
user.votes.create(pitch_id: 2) 
user.votes.create(pitch_id: 3) 

# 3.times{p3.votes.create}
# 4.times{p4.votes.create}
# 5.times{p5.votes.create}


user.comments.create(content: Faker::Lorem.sentence, pitch_id: 1)
user.comments.create(content: Faker::Lorem.sentence, pitch_id: 1)
user.comments.create(content: Faker::Lorem.sentence, pitch_id: 2)
user.comments.create(content: Faker::Lorem.sentence, pitch_id: 2)
user.comments.create(content: Faker::Lorem.sentence, pitch_id: 3)
user.comments.create(content: Faker::Lorem.sentence, pitch_id: 3)
# 3.times{p3.comments.create(content: Faker::Lorem.sentence)}
# 4.times{p4.comments.create(content: Faker::Lorem.sentence)}
# 5.times{p5.comments.create(content: Faker::Lorem.sentence)}
