class BaseService

  def self.conn
    Faraday.new("https://history-maps-be.herokuapp.com")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
