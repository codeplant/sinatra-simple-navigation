require 'sinatra/base'
require 'simple-navigation'

module Sinatra
  module SimpleNavigation
    def self.registered(app)
      app.helpers ::SimpleNavigation::Helpers
      ::SimpleNavigation.register(app)
    end
  end
  register SimpleNavigation
end