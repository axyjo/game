source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.0.1'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
  gem 'leaflet-rails'
end

gem 'jquery-rails'

group :authentication do
  gem "omniauth-google-oauth2", "~> 0.1.9"
  gem "omniauth-identity"
end

group :production do
  gem 'execjs'
end

group :test do
  gem 'minitest'
  gem 'database_cleaner'
  gem 'jasminerice'
  gem 'factory_girl_rails'
  gem 'turn'
  gem 'capybara'
end

group :development do
  gem 'guard'
  gem 'guard-minitest'
  gem 'sqlite3'

  # Use Thin instead of WEBrick.
  gem 'thin'
end

gem 'backbone-on-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Install the newrelic_rpm gem for some metrics.
gem 'newrelic_rpm'