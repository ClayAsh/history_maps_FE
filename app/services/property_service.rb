class PropertyService < BaseService

  def self.location_results(location)
    x = (location[:county] + " " + location[:state]).downcase
    response = conn.get("/api/v1/results") do |f|
      f.params["location"] = x
    end
    get_json(response)
  end
end
