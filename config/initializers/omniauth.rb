require 'omniauth-google-oauth2'
require 'omniauth-identity'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {access_type: 'online', approval_prompt: ''}
  provider :identity, :fields => [:email]
end
