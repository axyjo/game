guard 'minitest' do
  watch('config/application.rb') { "spec" }
  watch('config/environment.rb') { "spec" }
  watch(%r{^config/environments/.+\.rb$}) { "spec" }
  watch(%r{^config/initializers/.+\.rb$}) { "spec" }

  # with Minitest::Spec
  watch(%r|^spec/(.*)_spec\.rb|) { "spec" }
  watch(%r|^spec/models/(.*)_test\.rb|) { |m| "spec/models/#{m[1]}_test.rb" }
  watch(%r|^spec/integration/(.*)_test\.rb|) { |m| "spec/integration/#{m[1]}_test.rb" }
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/minitest_helper\.rb|)    { "spec" }

  # Rails 3.2
  watch(%r|^app/controllers/(.*)_controller\.rb|) { |m| "spec/integration/#{m[1]}_test.rb" }
  watch(%r|^app/helpers/(.*)\.rb|)     { |m| "spec/helpers/#{m[1]}_test.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "spec/models/#{m[1]}_test.rb" }
end
