class Favorite 
  attr_reader :title,
              :published_date,
              :creator,
              :image_full,
              :thumbnail,
              :short_id,
              :user_id
  def initialize(attributes)
    @title          = attributes[:attributes][:title]
    @published_date = attributes[:attributes][:published_date]
    @creator        = attributes[:attributes][:creator]
    @image_full     = attributes[:attributes][:image_full]
    @thumbnail      = attributes[:attributes][:thumbnail]
    @short_id       = attributes[:attributes][:short_id]
    @user_id        = attributes[:attributes][:user_id]
  end
end