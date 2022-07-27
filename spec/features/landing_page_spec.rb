require 'rails_helper'

RSpec.describe "Landing page" do
  it "has a link to create an account" do
    visit '/'

    expect(page).to have_link("Register/Sign In")
  end

  it "has search field to find by address" do
    visit '/'

    expect(page).to have_field("Address")
  end
end
