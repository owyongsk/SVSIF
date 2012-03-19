ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "owyong.sk",
    :user_name            => "#{ENV['EMAIL_ADD']}",
    :password             => "#{ENV['EMAIL_PASS']}",
    :authentication       => "plain",
    :enable_starttls_auto => true,
}
