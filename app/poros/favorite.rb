class Favorite 
  attr_reader :photo,
              :title,
              :other_titles,
              :details,
              :id
  def initialize(attributes)
    @photo        = attributes[:photo]
    @title        = attributes[:title]
    @other_titles = attributes[:other_titles]
    @details      = attributes[:details]
    @id           = attributes[:id]
  end
end