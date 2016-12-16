require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Hacku
  class Application < Rails::Application
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework false
    end
  end
end
