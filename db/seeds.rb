require 'nokogiri'
require 'open-uri'

# Proposition.destroy_all
Keyword.destroy_all
Domain.destroy_all

@domain = Domain.create!(
  age:'1',
)

@domain = Domain.create!(
  age: '2',
)

@keyword = Keyword.create!(
  name: 'Landlord Lifeguard',
)

@keyword.save

@keyword = Keyword.create!(
  name: 'landlord advice',
)

@keyword.save

    # url = URI("https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/")

    # https = Net::HTTP.new(url.host, url.port);
    # https.use_ssl = true

    # request = Net::HTTP::Get.new(url)
    # request["Authorization"] = "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"

    # response = https.request(request)
    # puts response.read_body
