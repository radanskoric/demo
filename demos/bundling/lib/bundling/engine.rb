module Bundling
  class << self
    attr_accessor :importmap
  end

  class Engine < ::Rails::Engine
    isolate_namespace Bundling

    initializer "bundling.javascript" do |app|
      app.config.assets.paths << root.join("app/javascript")
    end

    initializer "bundling.importmap", before: "importmap" do |app|
      Bundling.importmap = Importmap::Map.new
      Bundling.importmap.draw(app.root.join("config/importmap.rb"))
      Bundling.importmap.draw(root.join("config/importmap.rb"))
      Bundling.importmap.cache_sweeper(watches: root.join("app/javascript"))

      ActiveSupport.on_load(:action_controller_base) do
        before_action { Bundling.importmap.cache_sweeper.execute_if_updated }
      end
    end
  end
end
