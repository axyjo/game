require 'omniauth-google-oauth2'
require 'omniauth-identity'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, Rails.configuration.google_key, Rails.configuration.google_secret, {access_type: 'online', approval_prompt: ''}
  provider :identity, :fields => [:email]
end
