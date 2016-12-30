# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


events_arr = [
    [
        "Winter Garden Farmer's Market",
        "2017-01-12T18:00:00 -400",
        "2017-01-12T19:00:00 -400",
        "Come join hundreds of Winter Garden natives at the Winter Garden Farmer's Market every second Saturday of each month. The food trucks park just east of the splash park. Be sure to get there early to beat the lines!",
        "2000 Court Ave",
        "Winter Garden",
        "FL",
        "34787"
    ],
    [
        "Maple Bacon Coffee Porter Festival 2017",
        "2017-01-14T13:00:00 -400",
        "2017-01-14T18:00:00 -400",
        "Funky Buddha’s epic Maple Bacon Coffee Porter returns again on January 14th, this time with a new beer festival format featuring over 100 beers to taste from Florida and beyond. Festival access will allow you to pre-purchase up to a case of Maple Bacon Coffee Porter with an option to purchase bottles the day of the event too. Any bottles left unsold will be released to the public on Sunday, January 15th.",
        "1201 NE 38TH STREET",
        "Oakland Park",
        "FL",
        "33334"
    ]
]

events_arr.each do |event|
    event = Event.new(
        title: event[0],
        start_at: event[1],
        end_at: event[2],
        description: event[3],
        address_1: event[4],
        city: event[5],
        state: event[6],
        zip: event[7]
    )
    event.save!
end