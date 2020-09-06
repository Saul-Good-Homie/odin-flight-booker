class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def thank_you_email
        @booking = params[:booking]
        @passenger = params[:passenger]
        @flight = @booking.flight
        @url  = 'http://example.com/login'
        mail(to: @passenger.email, subject: 'Thank you for booking your flight!')
      end
end
