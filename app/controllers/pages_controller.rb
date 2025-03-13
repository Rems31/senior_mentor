class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[profile]

  def profile
    @my_offers = current_user.offers.includes(:bookings)
    @my_bookings = current_user.bookings
  end
end
