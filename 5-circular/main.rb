require 'active_support'

ROOT = File.expand_path("..", __FILE__)

$LOAD_PATH.unshift(ROOT)

# ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe
# => Loaded Cookery::Recipe class!
# => Loaded Cookery::Ingredient class!
# => Loaded Cookery::Recipe class!
# => Circular dependency detected while autoloading constant Cookery::Ingredient (RuntimeError)

# ---------------------

ActiveSupport::Dependencies.mechanism = :require
ActiveSupport::Dependencies.autoload_paths << ROOT

Cookery::Recipe
# => Loaded Cookery::Recipe class!
# => Loaded Cookery::Ingredient class!

# ActiveSupport used to crash with this issue frequently, esp. in multi-threaded environments like Sidekiq. They've fixed a lot of those issues, so now you'll just get issues in development/testing. Eliminate circular deps by eliminating explicit requires.

# Demo first example, but with require removed.
