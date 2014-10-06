# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Visdir::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost.localdomain",
  :user_name            => ENV['EMAIL_ADD'],
  :password             => ENV['EMAIL_PASS'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

