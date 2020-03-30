

class KeywordsController < ApplicationController
  def index
    @keywords = Keyword.all
  end

  def show
    @keyword = Keyword.find(params[:id])
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
    @keyword.save
  end

  def edit
    @keyword = Keyword.find(params[:id])
  end

  def update
    @keyword = Keyword.find(params[:id])
    @keyword.update(keyword_params)
  end

  private

  def keyword_params
    params.require(:keyword).permit(:name, :date, :current_rank, :initial_rank, :previous_week_rank)
  end

def rankwatch
  url = URI("https://apiv2.rankwatch.com//project/detail/json/p_id/c581d4904d184a170420d904bc85791c/s_id/2.00426/")

  https = Net::HTTP.new(url.host, url.port);
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["Authorization"] = "Basic cnctdjItMzg4NjktMjE5MTM6NmFiRHFUNzZSY1NI"

  response = https.request(request)
  puts response.read_body
end
  helper_method :rankwatch

  def find_country(name)
    request_api(
      "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
    )
  end

end
