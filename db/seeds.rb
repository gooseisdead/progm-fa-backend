# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = ["C", "1B", "2B", "3B", "SS", "OF", "P"]
logos = ["logo team", "team logo"]
teams = ["Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", 
        "Chicago White Sox", "Chicago Cubs",  "Cincinnati Reds", "Cleveland Indians", 
        "Colorado Rockies", "Detroit Tigers", "Houston Astros", "Kansas City Royals", 
        "Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", 
        "Minnesota Twins", "New York Yankees", "New York Mets", "Oakland Athletics", 
        "Philadelphia Phillies", "Pittsburgh Pirates", "San Diego Padres", 
        "San Francisco Giants", "Seattle Mariners", "St. Louis Cardinals", 
        "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals"]

31.times do
    User.create(username: Faker::Name.middle_name)
end

Team.create(name: "Arizona Diamondbacks", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 1 )
Team.create(name: "Atlanta Braves", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 2)
Team.create(name: "Baltimore Orioles", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 3)
Team.create(name: "Boston Red Sox", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 4)
Team.create(name: "Chicago White Sox", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 5)
Team.create(name: "Chicago Cubs", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 6)
Team.create(name: "Cincinnati Reds", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 7)
Team.create(name: "Cleveland Indians", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 8)
Team.create(name: "Colorado Rockies", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 9)
Team.create(name: "Detroit Tigers", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 10)
Team.create(name: "Houston Astros", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 11)
Team.create(name: "Kansas City Royals", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 12)
Team.create(name: "Los Angeles Angels", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 13)
Team.create(name: "Los Angeles Dodgers", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 14)
Team.create(name: "Miami Marlins", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 15)
Team.create(name: "Milwaukee Brewers", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 16)
Team.create(name: "Minnesota Twins", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 17)
Team.create(name: "New York Yankees", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 18)
Team.create(name: "New York Mets", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 19)
Team.create(name: "Oakland Athletics", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 20)
Team.create(name: "Philadelphia Pillies", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 21)
Team.create(name: "Pittsburgh Pirates", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 22)
Team.create(name: "San Diego Padres", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 23)
Team.create(name: "San Francisco Giants", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 24)
Team.create(name: "Seattle Mariners", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 25)
Team.create(name: "St. Louis Cardinals", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 26)
Team.create(name: "Tampa Bay Rays", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 27)
Team.create(name: "Texas Rangers", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 28)
Team.create(name: "Toronto Blue Jays", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 29)
Team.create(name: "Washington Nationals", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 30)
Team.create(name: "Free Agent", logo: logos.sample, total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 31)

20.times do
    Player.create(name: Faker::Name.name, position: positions.sample, years: rand(1..4), salary_per_year: rand(1.0..2.0), real_mlb_team: teams.sample, team_id: Team.all.sample.id)
end

15. times do
    Player.create(name: Faker::Name.name, position: positions.sample, years: 0, salary_per_year: 0, real_mlb_team: teams.sample, team_id: 31)
end

10.times do
    Bid.create(years: rand(1..4), salary_per_year: rand(0.4..2.0), player_id: rand(21..35))
end

70.times do
    UserBid.create(user_id: User.all.sample.id, bid_id: Bid.all.sample.id)
end


