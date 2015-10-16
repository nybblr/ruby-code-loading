require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe

# Unable to autoload constant Cookery::Recipe, expected ./cookery/recipe.rb to define it (LoadError)
