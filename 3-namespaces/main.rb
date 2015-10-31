require 'active_support'

ROOT = File.expand_path("..", __FILE__)

ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe
# => Loaded ::Recipe class!
# => Unable to autoload constant Cookery::Recipe, expected ./cookery/recipe.rb to define it (LoadError)

# ---------------------

ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths +=
  ["#{ROOT}/cookery", "#{ROOT}"]

Recipe
# => Loaded ::Recipe class!
p $LOADED_FEATURES.last
# => "/home/nybblr/cookery/recipe.rb"

Cookery::Recipe
# => Unable to autoload constant Cookery::Recipe, expected ./cookery/recipe.rb to define it (LoadError)

# Lesson: namespaces matter, esp. if you have multiple ways to get to a constant. Avoid nested autoload paths. Require does its job, but autoload will get confused and crash.
