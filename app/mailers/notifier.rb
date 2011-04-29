class Notifier < ActionMailer::Base
  
  def booking_notification(booking)
    @booking = booking
    mail(
      :to => "service@massagemyway.com",
      :from => booking.email,
      :subject => "New #{booking.support_type}"
    )
  end
  
end
