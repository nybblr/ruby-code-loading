eval "puts to_s"
# => main

# ---------------------

class Cook
  def get_binding
    binding
  end
end

eval "puts to_s", Cook.new.get_binding
# => #<Cook:0x007f88918e3110>

# ---------------------

dir  = File.expand_path("..", __FILE__)
file = File.join(dir, "cookery/recipe.rb")

eval File.read(file), binding, "cookery/recipe.rb", 1
# => Loaded Cookery::Recipe class!

# ---------------------

load File.join(dir, "cookery/recipe.rb")
# => Loaded Cookery::Recipe class!

# ---------------------

$LOAD_PATH.unshift(dir)

load "cookery/recipe.rb"
# => Loaded Cookery::Recipe class!

# ---------------------

require File.join(dir, "cookery/recipe.rb")
# => Loaded Cookery::Recipe class!

require "cookery/recipe"
# Eerie silence...

p $LOADED_FEATURES.last
# => "/home/nybblr/cookery/recipe.rb"
