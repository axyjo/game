ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
begin; require 'minitest/autorun'; rescue LoadError; end
begin; require 'turn/autorun'; rescue LoadError; end

# Database cleaner.
DatabaseCleaner.strategy = :truncation
class MiniTest::Spec
  before :each do
    DatabaseCleaner.clean
  end
end

# Configure reporting style for tests.
Turn.config.format = :cue
