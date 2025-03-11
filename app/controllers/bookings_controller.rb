class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :authorize_booking_owner, only: %i[edit update destroy]

  def show
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(user: current_user, offer: @offer, status: "pending", date: params[:booking][:date])

    if @booking.save
      redirect_to booking_path(@booking), notice: "Réservation effectuée."
    else
      render "offers/show"
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Réservation mise à jour."
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: "Réservation annulée"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def authorize_booking_owner
    redirect_to root_path, alert: "Vous n'êtes pas autorisé." unless @booking.user == current_user
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
