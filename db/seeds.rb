# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(email: 'user@email.com', password: '123password')

hulk = Character.create!(name: 'The Incredible Hulk', realname: 'Bruce Banner',
                         history: 'After being caught in a Gamma Bomb accident, Bruce Banner develops the alter
                         ego of the Hulk',
                         powers: 'Super-strength, durability, regerneration, Super-Endurance',
                         users: [user])

spiderman = Character.create!(name: 'Spider-man', realname: 'Peter Parker',
                              history: 'Peter Parker is bitten by a radioactive spider, given \
                              him super powers!',
                              powers: 'Spidey-sense, incredible agility, ability to shoot webs, Super-Strength')

punisher = Character.create!(name: 'The Punisher', realname: 'Frank Castle',
                             history: 'After his family is murdered for witnessing a gangland execution,
                             Frank Castle become the Punisher to get vengeance.',
                             powers: 'Martial Arts master, Marksmanship, Special-Ops, Explosives')

daredevil = Character.create!(name: 'Daredevil', realname: 'Matthew Murdock',
                              history: 'After saving a man from an oncoming truck, Matthew Murdock is blinded
                              by radioactive chemicals while simultaneously heightening his other senses.',
                              powers: 'Heightened Senses, Radar Sense, Martial Arts master, electromagnetic
                              radiation detection.')

user2 = User.create!(email: 'user2@email.com', password: '123password', characters: [daredevil])
