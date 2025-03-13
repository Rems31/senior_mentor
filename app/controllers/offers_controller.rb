class OffersController < ApplicationController
  before_action :set_offer, only: %i[update destroy edit show]
  before_action :authorize_user!, only: %i[edit update destroy]
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

    if @offer.save
      redirect_to offer_path(@offer), notice: "Offer created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer), notice: "Offer updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, status: :see_other, notice: "Offer deleted successfully."
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def authorize_user!
    redirect_to offers_path, alert: "You are not authorized to perform this action." unless @offer.user == current_user
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :offer_type, :area, :price, :photo)
  end
end
