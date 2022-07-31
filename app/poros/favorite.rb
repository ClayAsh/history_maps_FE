class Favorite 
  attr_reader :photo,
              :title,
              :id
  def initialize(attributes)
    @photo = attributes[:photo]
    @title = attributes[:title]
    @id = attributes[:id]
  end
end