require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

# ActiveSupport::Dependencies.mechanism = :load
ActiveSupport::Dependencies.autoload_paths << ROOT

p $LOADED_FEATURES.last
# => ".../active_support/dependencies.rb"
Cookery::Recipe
# => Loaded Cookery::Recipe class!
p $LOADED_FEATURES.last
# => ".../active_support/dependencies.rb"
require 'cookery/recipe'
# => Loaded Cookery::Recipe class!

# Same output, autoload_paths doesn't use require, but load. Unless... NO_RELOAD flag.

# ---------------------

ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

p $LOADED_FEATURES.last
# => ".../active_support/dependencies.rb"
Cookery::Recipe
# => Loaded Cookery::Recipe class!
p $LOADED_FEATURES.last
# => "/home/nybblr/cookery/recipe.rb"
require 'cookery/recipe'
# => "*Eerie silence…*"

# ---------------------

# So what about ActiveSupport::Autoload?
# Create Cookery module w/ autoload.

require 'cookery'

p $LOADED_FEATURES.last
# => "/home/nybblr/cookery.rb"
Cookery::Recipe
# => Loaded Cookery::Recipe class!
p $LOADED_FEATURES.last
# => "/home/nybblr/cookery/recipe.rb"
require 'cookery/recipe'
# => "*Eerie silence…*"

# ActiveSupport::Dependencies.mechanism doesn't matter, always uses require!
