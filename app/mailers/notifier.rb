class Notifier < ActionMailer::Base
  
  def booking_notification(booking)
    @booking = booking
    mail(
      :to => "service@massagemyway.com",
      :from => booking.email,
      :subject => "[MassageMyWay] Booking for #{booking.name}"
    )
  end
  
end
