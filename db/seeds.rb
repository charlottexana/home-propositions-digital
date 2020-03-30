# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'

# Proposition.destroy_all
# Keyword.destroy_all

# @keyword = Keyword.create!(
#   name: 'Landlord Lifeguard',
# )

# @keyword.save

# @keyword = Keyword.create!(
#   name: 'landlord advice',
# )

# @keyword.save

    url = URI("https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"

    response = https.request(request)
    puts response.read_body
