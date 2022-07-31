class PropertyService < BaseService

  def self.location_results(location)
    response = conn.get("/api/v1/results?#{location}")
    get_json(response)
  end 
end
