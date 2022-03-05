class BookingsController < ApplicationController
    before_action :set_gig , only: [:new, :create]
    before_action :authenticate_user! , only: [:new, :create, :index]
    
    def index
        @bookings = current_user.bookings
    end
    def new
        @booking = Booking.new
    end

    def create
        price = booking_params[:tickets].to_i * @gig.price
        updated_tickets = @gig.tickets - booking_params[:tickets].to_i
        @booking = Booking.create(user: current_user, gig: @gig, tickets: booking_params[:tickets], price: price)
        @gig.update(tickets: updated_tickets)
        redirect_to gigs_path, notice: "Tickets for #{@gig.name} purchased successfully!"
    end

    def set_gig
        @gig = Gig.find(params[:gig_id])
    end
  
      # Only allow a list of trusted parameters through.
    def booking_params
        params.require(:booking).permit(:tickets)
    end

end
