class Property
  attr_reader :title,
              :collection_link,
              :id,
              :index_id

  def initialize(data)
    @title = data[:title]
    @collection_link = data[:collection_link]
    @id = data[:id]
    @index_id = data[:index_id]
  end
end
