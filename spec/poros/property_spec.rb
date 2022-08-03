require 'rails_helper'

RSpec.describe Property do
  it 'exists with attributes', :vcr do
    data = {:title=>
  "3. Photographic copy of photograph (ca. 1955, original negative found in Beierle Barn, now on file at New Denver International Airport Office, Stapleton International Ariport, Denver, CO). VIEW OF RESIDENCE AND FARM, LOOKING NORTHEAST. - Beierle Farm, Hudson Road & 96th Avenue, Denver, Denver County, CO",
 :collection_link=>"https://www.loc.gov/pictures/collection/hh/item/co0287.photos.183534p/",
 :full_id=>"co0287.photos.183534p",
 :short_id=>"co0287",
 :index_id=>1,
 :image_full=>
  "https://tile.loc.gov/storage-services/service/pnp/habshaer/co/co0200/co0287/photos/183534pr.jpg",
 :image_thumbnail=>
  "https://tile.loc.gov/storage-services/service/pnp/habshaer/co/co0200/co0287/photos/183534p_150px.jpg",
 :creator=>"Thallheimer, Arnold",
 :published_date=>"1990"
    }
    property = Property.new(data)


    expect(property).to be_a(Property)
  end
end
