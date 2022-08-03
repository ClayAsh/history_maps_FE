class Property
  attr_reader :title,
              :collection_link,
              :full_id,
              :short_id,
              :index_id,
              :image_full,
              :image_thumbnail,
              :creator,
              :published_date

  def initialize(data)

    @title = data[:title]
    @collection_link = data[:collection_link]
    @full_id = data[:full_id]
    @short_id = data[:short_id]
    @index_id = data[:index_id]
    @image_full = data[:image_full]
    @image_thumbnail = data[:image_thumbnail]
    @creator = data[:creator]
    @published_date = data[:published_date]
  end
end
