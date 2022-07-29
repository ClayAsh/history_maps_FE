class BuildingService < BaseService

  def self.address_search(address)
    response = conn.get("/api/v1/search?location=#{address}")
    get_json(response)
  end
end
