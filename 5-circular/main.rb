require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

# ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe

# Circular dependency detected while autoloading constant Cookery::Ingredient (RuntimeError)
