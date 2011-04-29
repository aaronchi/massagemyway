Massagemyway::Application.config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'massagemyway.com',
  :user_name            => 'service@massagemyway.com',
  :password             => 'work4home',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}