require 'sinatra/simple_navigation/version'
require 'simple-navigation'

module Sinatra
  
  module SimpleNavigation
    def self.registered(app)
      app.helpers ::SimpleNavigation::Helpers
      ::SimpleNavigation.register
    end
  end

  #check if root is defined. It's undefined for modular style apps. 
  unless ::Sinatra::Application.root.nil?
    ::SimpleNavigation.register
    helpers ::SimpleNavigation::Helpers
  end

end