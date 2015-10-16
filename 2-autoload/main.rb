require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

# ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

p $LOADED_FEATURES.last
Cookery::Recipe
p $LOADED_FEATURES.last

# Same output, autoload_paths doesn't use require, but load. Unless... NO_RELOAD flag.

# ---------------------

p $LOADED_FEATURES.last
Cookery::Recipe
require 'cookery/recipe'
p $LOADED_FEATURES.last

# Constant redef warnings. Avoided if NO_RELOAD was set (production).

# ---------------------

# Create Cookery module w/ autoload.
