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
# warning: already initialized constant Cookery::Recipe::CONSTANT
# warning: previous definition of CONSTANT was here

# Constant redef warnings. Avoided if NO_RELOAD was set (production).

# ---------------------

ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

p $LOADED_FEATURES.last
# => ".../active_support/dependencies.rb"
Cookery::Recipe
# => Loaded Cookery::Recipe class!
p $LOADED_FEATURES.last
# => "/home/nybblr/cookery.rb"
require 'cookery/recipe'
# *Eerie silence...*

# Fixed by using require, but now we can't reload in dev!
# Lesson learned: Just don't use require. Stick with autoloading, mix and match at your risk. It will find your intern.
