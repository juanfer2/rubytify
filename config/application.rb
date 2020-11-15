require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rubytify
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.autoload_paths += %W(#{config.root}/app/services)
    config.autoload_paths += %W(#{config.root}/app/services/spotify_services)
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # config/application.rb
    
    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
    }
    
    RSpotify::authenticate("d7d83b0f46524bcb937e07082358aa8f", "50a89db580f14d09809e2f5ef57b3a9d")
  end
end
