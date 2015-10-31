module Cookery
  class Application < Rails::Application
    config.autoload_paths << "#{config.root}/lib"
    config.eager_load_paths << "#{config.root}/lib"
    config.eager_load_paths +=
      ["#{config.root}/app/models",
       "#{config.root}/app/models/queries"]
  end
end
