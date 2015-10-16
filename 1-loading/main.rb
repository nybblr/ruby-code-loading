eval "puts to_s"

# ---------------------

class Binder
  def get_binding
    binding
  end
end

eval "puts to_s", Binder.new.get_binding

# ---------------------

eval "raise to_s", binding

# ---------------------

eval "raise to_s", binding, "binder.rb", 1

# ---------------------

dir  = File.expand_path("..", __FILE__)
file = File.join(dir, "cookery/recipe.rb")

eval file, binding, "cookery/recipe.rb", 1

# ---------------------

load File.join(dir, "cookery/recipe.rb")

# ---------------------

$LOAD_PATH.unshift(dir)

load "cookery/recipe.rb"

# ---------------------

require File.join(dir, "cookery/recipe.rb")
require "cookery/recipe"

# ---------------------

p $LOADED_FEATURES.last
