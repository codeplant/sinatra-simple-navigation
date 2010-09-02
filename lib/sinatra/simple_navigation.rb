require 'simple-navigation'

module Sinatra
  
  module SimpleNavigation
    def self.registered(app)
      app.helpers ::SimpleNavigation::Helpers
    end
  end

  ::SimpleNavigation.register
  helpers ::SimpleNavigation::Helpers
end