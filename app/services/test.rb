require 'faraday'
require 'json'
require 'pry'

def conn
  Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1/')
end

response = JSON.parse(conn.get('characters?affiliation=Fire+Nation').body, symbolize_names: true)
require 'pry'; binding.pry