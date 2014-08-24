require 'faraday'
require 'json'

class TogglReports
  
  def initialize(api_key)
    @connection = Faraday.new(url: 'https://www.toggl.com/reports/api/v2') do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
      faraday.headers = {"Content-Type" => "application/json"}
      faraday.basic_auth api_key, 'api_token'
    end
  end

  def get(path, params)
    response = @connection.get path,params
    JSON.parse(response.body)
  end
end
