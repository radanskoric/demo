module Morphing
  class << self
    attr_accessor :importmap
  end

  class Engine < ::Rails::Engine
    isolate_namespace Morphing

    initializer "morphing.javascript" do |app|
      app.config.assets.paths << root.join("app/javascript")
    end

    initializer "morphing.importmap", before: "importmap" do |app|
      Morphing.importmap = Importmap::Map.new
      Morphing.importmap.draw(app.root.join("config/importmap.rb"))
      Morphing.importmap.draw(root.join("config/importmap.rb"))
      Morphing.importmap.cache_sweeper(watches: root.join("app/javascript"))

      ActiveSupport.on_load(:action_controller_base) do
        before_action { Morphing.importmap.cache_sweeper.execute_if_updated }
      end
    end
  end
end
