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
      redirect_to booking_path(@booking), 
end
