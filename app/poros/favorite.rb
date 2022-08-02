class Favorite 
  attr_reader :photo,
              :title,
              :other_titles,
              :details,
              :id,
              :location_id,
              :pdf,
              :user_id
  def initialize(attributes)
    @id           = attributes[:id]
    @photo        = attributes[:attributes][:photo]
    @title        = attributes[:attributes][:title]
    @other_titles = attributes[:attributes][:other_titles]
    @details      = attributes[:attributes][:details]
    @location_id  = attributes[:attributes][:location_id]
    @pdf          = attributes[:attributes][:pdf]
    @user_id      = attributes[:attributes][:user_id]
  end
end