class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
