require "test_helper"

class LocationTest < ActiveSupport::TestCase
  setup do
    @location = Location.new(address: '1600 Amphitheatre Parkway, Mountain View, CA')
  end

  test 'geocodes address' do
    stub_request(:get, /maps\.googleapis\.com/)
      .to_return(status: 200, body: file_fixture('google_geocode_response.json').read)

    @location.save
    assert_in_delta 37.4224764, @location.latitude, 0.00001
    assert_in_delta -122.0842499, @location.longitude, 0.00001
  end

  test 'handles geocoding failure' do
    stub_request(:get, /maps\.googleapis\.com/).to_return(status: 400)

    @location.save
    assert_nil @location.latitude
    assert_nil @location.longitude
  end
end
end
