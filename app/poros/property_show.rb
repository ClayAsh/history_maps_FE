class PropertyShow
  attr_reader :title,
              :other_titles,
              :photo_large,
              :photo_medium,
              :service_medium,
              :service_low

  def initialize(data)
    @title = data[:title]
    @other_titles = data[:other_titles]
    @photo_large = data[:photo_large]
    @photo_medium = data[:photo_medium]
    @service_medium = data[:service_medium]
    @service_low = data[:service_low]
  end
end
