ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address                       => 'smtp.sendgrid.net',
  :port                          => '587',
  :authentication                => :plain,
  :user_name                     => 'app53692422@heroku.com',
  :password                      => 'z0zzlmbj4742',
  :domain                        => 'heroku.com',
  :enable_starttls_auto          => true
  }