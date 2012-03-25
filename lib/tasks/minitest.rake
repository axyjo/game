require "rake/testtask"

Rake::TestTask.new(:test => "db:test:prepare") do |t|
  t.libs << "spec"
  t.pattern = "spec/**/*_test.rb"
end

task :default => :test
