class Building
  attr_reader :street,
              :county,
              :city,
              :state,
              :zipcode

  def initialize(data)
    @street = data[:street]
    @county = data[:county]
    @city = data[:city]
    @state = data[:state]
    @zipcode = data[:zipcode]
  end

end
