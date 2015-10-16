require File.expand_path('../../config/environment', __FILE__)
require 'spec_helper'
require 'rspec/rails'

# Rails specific config
RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end
