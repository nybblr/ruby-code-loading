module Cookery
  class Application < Rails::Application
    # config.autoload_paths += %W(#{config.root}/lib)
    config.eager_load_paths += %W(#{config.root}/lib)
  end
end
