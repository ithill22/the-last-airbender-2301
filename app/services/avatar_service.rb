class AvatarService
  def get_characters(nation)
    get_url("characters?affiliation=#{nation}")
  end

  private
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1/')
  end  
end