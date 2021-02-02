# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = ["C", "1B", "2B", "3B", "SS", "OF", "P"]
logos = ["logo team", "team logo"]
teams = ["lugs", "mugs", "tugs", "jugs"]

30.times do
    User.create(username: Faker::Name.middle_name)
end

30.times do
    Team.create(name: Faker::Team.name, logo: logos.sample, total_salary: rand(85..150), playoff_discount: 0.0, user_id: User.all.sample.id)
end

200.times do
    Player.create(name: Faker::Name.name, position: positions.sample, years: rand(1..4), salary_per_year: rand(1..35), real_mlb_team: teams.sample, team_id: Team.all.sample.id)
end

100.times do
    Bid.create(years: rand(1..4), salary_per_year: rand(1..35), player_id: Player.all.sample.id)
end

70.times do
    UserBid.create(user_id: User.all.sample.id, bid_id: Bid.all.sample.id)
end
