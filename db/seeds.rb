# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.destroy_all
Airport.reset_pk_sequence

airports = Airport.create([{code: "SFO"}, {code: "NYC"}, {code: "LAS"}])

Flight.destroy_all
Flight.reset_pk_sequence

flights = Flight.create([
    {from_airport_id: 1, to_airport_id: 2, departure: DateTime.new(2020, 10, 1, 10, 0, 0), duration: 6},
    {from_airport_id: 1, to_airport_id: 3, departure: DateTime.new(2020, 11, 2, 10, 0, 0), duration: 8},
    {from_airport_id: 2, to_airport_id: 1, departure: DateTime.new(2020, 12, 3, 10, 0, 0), duration: 6.5},
    {from_airport_id: 2, to_airport_id: 3, departure: DateTime.new(2020, 10, 4, 10, 0, 0), duration: 7},
    {from_airport_id: 3, to_airport_id: 1, departure: DateTime.new(2020, 12, 5, 10, 0, 0), duration: 9},
    {from_airport_id: 3, to_airport_id: 2, departure: DateTime.new(2020, 11, 7, 10, 0, 0), duration: 7}
    ])