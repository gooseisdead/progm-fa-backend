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

Team.create(name: "Arizona Diamondbacks", logo: "/images/dbacks.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 1)
Team.create(name: "Atlanta Braves", logo: "/images/braves.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 2)
Team.create(name: "Baltimore Orioles", logo: "/images/orioles.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 3)
Team.create(name: "Boston Red Sox", logo: "/images/redsox.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 4)
Team.create(name: "Chicago White Sox", logo: "/images/whitesox.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 5)
Team.create(name: "Chicago Cubs", logo: "/images/cubs.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 6)
Team.create(name: "Cincinnati Reds", logo: "/images/reds.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 7)
Team.create(name: "Cleveland Indians", logo: "/images/indians.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 8)
Team.create(name: "Colorado Rockies", logo: "/images/rockies.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 9)
Team.create(name: "Detroit Tigers", logo: "/images/tigers.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 10)
Team.create(name: "Houston Astros", logo: "/images/astros.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 11)
Team.create(name: "Kansas City Royals", logo: "/images/royals.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 12)
Team.create(name: "Los Angeles Angels", logo: "/images/angels.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 13)
Team.create(name: "Los Angeles Dodgers", logo: "/images/dodgers.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 14)
Team.create(name: "Miami Marlins", logo: "/images/marlins.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 15)
Team.create(name: "Milwaukee Brewers", logo: "/images/brewers.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 16)
Team.create(name: "Minnesota Twins", logo: "/images/twins.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 17)
Team.create(name: "New York Yankees", logo: "/images/yankees.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 18)
Team.create(name: "New York Mets", logo: "/images/mets.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 19)
Team.create(name: "Oakland Athletics", logo: "/images/athletics.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 20)
Team.create(name: "Philadelphia Pillies", logo: "/images/phillies.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 21)
Team.create(name: "Pittsburgh Pirates", logo: "/images/pirates.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 22)
Team.create(name: "San Diego Padres", logo: "/images/padres.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 23)
Team.create(name: "San Francisco Giants", logo: "/images/giants.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 24)
Team.create(name: "Seattle Mariners", logo: "/images/mariners.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 25)
Team.create(name: "St. Louis Cardinals", logo: "/images/cardinals.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 26)
Team.create(name: "Tampa Bay Rays", logo: "/images/rays.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 27)
Team.create(name: "Texas Rangers", logo: "/images/rangers.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 28)
Team.create(name: "Toronto Blue Jays", logo: "/images/bluejays.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 29)
Team.create(name: "Washington Nationals", logo: "/images/nationals.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 30)
Team.create(name: "Free Agent", logo: "/images/freeagent.png", total_salary: rand(85.0..150.0), playoff_discount: 0.0, user_id: 31)

20.times do
    Player.create(name: Faker::Name.name, position: positions.sample, years: rand(1..4), salary_per_year: rand(1.0..2.0), real_mlb_team: teams.sample, team_id: rand(1..30))
end

Player.create(name: "Keury Mella" , position: "RP", years: 0, salary_per_year: 0, real_mlb_team: "Arizona Diamondbacks", team_id: 31)
Player.create(name: "Bryan Holaday" , position: "C", years: 0, salary_per_year: 0, real_mlb_team: "Arizona Diamondbacks", team_id: 31)
Player.create(name: "Dominic Miroglio" , position: "C", years: 0, salary_per_year: 0, real_mlb_team: "Arizona Diamondbacks", team_id: 31)

Bid.create(years: 1, salary_per_year: 0.4, player_id: 21)
Bid.create(years: 1, salary_per_year: 0.5, player_id: 21)
Bid.create(years: 1, salary_per_year: 0.8, player_id: 21)
Bid.create(years: 1, salary_per_year: 1.6, player_id: 21)
Bid.create(years: 2, salary_per_year: 2.0, player_id: 22)
Bid.create(years: 2, salary_per_year: 2.5, player_id: 22)
Bid.create(years: 3, salary_per_year: 3.0, player_id: 23)
Bid.create(years: 4, salary_per_year: 4.0, player_id: 23)

70.times do
    UserBid.create(user_id: User.all.sample.id, bid_id: Bid.all.sample.id)
end

