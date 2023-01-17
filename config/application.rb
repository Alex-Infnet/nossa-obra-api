require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    # Make the app API only
    config.api_only = true

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Make the Debug provided same format as the API response
    config.debug_exception_response_format = :api
    # to change debug to HTML format
    #config.debug_exception_response_format = :default

    config.time_zone = "America/Sao_Paulo"

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
