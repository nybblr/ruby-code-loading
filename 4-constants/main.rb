require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe
require 'cookery/recipe'

# warning: already initialized constant Cookery::Recipe::CONSTANT
