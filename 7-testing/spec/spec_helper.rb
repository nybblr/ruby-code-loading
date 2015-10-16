ENV["RAILS_ENV"] ||= 'test'

# General config
RSpec.configure do |config|
  config.order = :random
end

# Stub out common Rails methods
if !Object.const_defined?(:Rails)

  require 'active_support/all'

  Rails = Module.new do
    def self.cache
      @store ||= ActiveSupport::Cache::NullStore.new
    end

    def self.root
      @root ||= File.expand_path('../..', __FILE__)
    end
  end

  ActiveSupport::Dependencies.autoload_paths +=
    Dir["#{Rails.root}/app/*/"]
end
