# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'

Proposition.destroy_all
Keyword.destroy_all

Proposition.create!(
  name: 'Landlord Lifeguard',
  status: 'Live'
)

Proposition.create!(
  name: 'Blink',
  status: 'Pending'
)

Keyword.create!(
  name: 'Landlord Lifeguard'
)

Keyword.create!(
  name: 'landlord advice'
)
