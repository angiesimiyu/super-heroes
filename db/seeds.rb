# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

hero1 = Hero.create(
    name: "Chris Evans",
    super_name: "Captain America"
)

power1 = hero1.Power.create(
    name: "Super Strength",
    description: "Inhumane amount of strength"
)

hero2 = Hero.create(
    name: "Barry Alan",
    super_name: "The Flash"
)

power2 = hero2.Power.create(
    name: "Super Speed",
    description: "can run at the speed of light"
)

hero3 = Hero.create(
    name: "Paul Rudd",
    super_name: "Ant-Man"
)

power3 = hero3.Power.create(
    name: "Size Shifting",
    description: "Can shift to be either as big as earth or as small as an atom"
)

HeroPower.create([
    {
        strength: "Excellent",
        hero_id: 1,
        power_id:1
    },
    {
        strength: "Average",
        hero_id: 3,
        power_id:3
    }
])
