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

  def search
    countries = find_country(params[:country])

    unless countries
      flash[:alert] = 'Country not found'
      return render action: :index

    @country = countries.first
    @weather = find_weather(@country['capital'], @country['alpha2Code'])
    end
  end

   def find_weather(city, country_code)
    query = URI.encode("#{city},#{country_code}")
    request_api(
      "https://community-open-weather-map.p.rapidapi.com/forecast?q=#{query}"
    )
  end

  private

  def keyword_params
    params.require(:keyword).permit(:name, :date, :current_rank, :initial_rank, :previous_week_rank)
  end

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
      }
    )
    return nil if response.status != 200
    JSON.parse(response.body)
  end
  def find_country(name)
    request_api(
      "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
    )
  end

end
