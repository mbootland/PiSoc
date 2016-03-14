# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.admin.create(email: 'matthew.bootland@gmail.com', first_name: 'Matthew', last_name: 'Bootland', username: 'mbootland', password: 'q1w2e3r4t5y6')
