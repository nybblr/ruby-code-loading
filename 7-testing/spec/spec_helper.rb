ENV["RAILS_ENV"] ||= 'test'

if !Object.const_defined?(:Rails)
  require 'active_support/all'

  root = File.expand_path('../..', __FILE__)

  ActiveSupport::Dependencies.autoload_paths +=
    Dir["#{root}/app/*/"]
end

# General config
RSpec.configure do |config|
  config.order = :random
end
