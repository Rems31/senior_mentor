class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :authorize_booking_owner, only: %i[edit update destroy]

  def show
  end

  def index
    @bookings = current_user.bookings
  end

  def create
    @offer = Offer.find(params[:offer_id])

    # Vérifier si l'utilisateur tente de réserver sa propre offre
    if @offer.user == current_user
      redirect_to offer_path(@offer), alert: "You can't book your own offer!"
      return
    end

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    @booking.status = "pending"

    if @booking.save
      redirect_to offer_path(@offer), notice: "Booking made with success."
    else
      flash.now[:alert] = @booking.errors.full_messages.join(", ") # Afficher les erreurs
      render "offers/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if params[:status].present? && @booking.offer.user == current_user
      @booking.update(status: params[:status])
      redirect_to profile_path, notice: "Booking #{params[:status]}."
    elsif @booking.user == current_user
      redirect_to profile_path, alert: "You cannot change the status of your own booking."
    else
      redirect_to profile_path, alert: "You are not authorized."
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other, notice: "Booking Cancelled"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def authorize_booking_owner
    redirect_to root_path, alert: "You are not authorized." unless @booking.offer.user == current_user
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
