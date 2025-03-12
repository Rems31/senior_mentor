class OffersController < ApplicationController
  before_action :set_offer, only: %i[delete edit show]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @offers = Offer.all
  end

  def show; end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to offers_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @offer = Offer.update(offer_params)
    if @offer.update
      redirect_to offers_path(@offer)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :offer_type, :area, :price, :photo_url)
  end
end
