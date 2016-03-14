module Weblinc
  module ExamplePlugin
    class Engine < ::Rails::Engine
      include Weblinc::Plugin
      isolate_namespace Weblinc::ExamplePlugin

      initializer 'weblinc.example_plugin' do
        # configure and customize WebLinc here
      end
    end
  end
end
