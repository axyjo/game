ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
begin; require 'minitest/autorun'; rescue LoadError; end
begin; require 'capybara/rails'; rescue LoadError; end
begin; require 'turn/autorun'; rescue LoadError; end

# Database cleaner.
DatabaseCleaner.strategy = :truncation
class MiniTest::Spec
  before :each do
    DatabaseCleaner.clean
  end
end

class IntegrationTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/integration$/, self)
end

# Configure reporting style for tests.
Turn.config.format = :cue
