class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[profile]

  def profile
    @offers = current_user.offers
    @bookings = current_user.bookings
  end
end
