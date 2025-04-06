module Bundling
  class Engine < ::Rails::Engine
    isolate_namespace Bundling
  end
end
