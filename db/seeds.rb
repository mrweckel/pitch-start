# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(username: "admin", password: "admin")


user.pitches.create(title: "Pack It",          url: '//www.youtube.com/embed/J-2pX8hjExA?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')
user.pitches.create(title: "Super Halal Bros", url: '//www.youtube.com/embed/iLlv-Ac2_ao?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')
user.pitches.create(title: "Poop Scoop",       url: '//www.youtube.com/embed/77ayY9UzQeI?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')
user.pitches.create(title: "One Headphone?",   url: '//www.youtube.com/embed/aEK5XTz3RcU?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')
user.pitches.create(title: "Deaf Grandma",     url: '//www.youtube.com/embed/c7laXMrtHXo?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')
user.pitches.create(title: "Cat Love",         url: '//www.youtube.com/embed/OdTywYM5dJc?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen')





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
