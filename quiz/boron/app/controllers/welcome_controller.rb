class WelcomeController < ApplicationController
  def index

  end
  def geo
    a = Geocoder.search(params[:place])
    @lat = a[0].latitude
    @long = a[0].longitude
    @addy = a[0].address
  end
end