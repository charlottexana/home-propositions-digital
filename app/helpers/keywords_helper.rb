require "uri"
require "net/http"

module KeywordsHelper

  def rankwatch
    url = URI("https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Authorization"] = "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"

    response = https.request(request)
    puts response.read_body

  end

end
