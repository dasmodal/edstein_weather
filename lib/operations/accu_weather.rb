# frozen_string_literal: true

module Operations
  class AccuWeather
    RESOURCE_URL = "dataservice.accuweather.com"

    def initialize(api_key:, location_key:)
      @api_key = api_key
      @location_key = location_key
    end

    def fetch_current
      params = "/currentconditions/v1/#{@location_key}?apikey=#{@api_key}"
      @weather_response = Net::HTTP.get(RESOURCE_URL, params)

      parse
    end

    def fetch_historical
      params = "/currentconditions/v1/#{@location_key}/historical/24?apikey=#{@api_key}"
      @weather_response = Net::HTTP.get(RESOURCE_URL, params)

      parse
    end

    private

    def parse
      JSON.parse(@weather_response)
    end
  end
end
