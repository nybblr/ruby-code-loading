eval "puts to_s"

# ---------------------

class Cook
  def get_binding
    binding
  end
end

eval "puts to_s", Cook.new.get_binding

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

p $LOADED_FEATURES.last
