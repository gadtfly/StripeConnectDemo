Devise.setup do |config|
  config.omniauth :stripe_connect,
                  ENV['STRIPE_APP_CLIENT_ID'],
                  ENV['STRIPE_SECRET_KEY'],
                  scope:          'read_write',
                  stripe_landing: 'login'
end
