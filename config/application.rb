require_relative 'boot'
require "devise"
require "devise-i18n"
require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Baozheng
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

  config.i18n.default_locale = :"zh-CN"


  end

  config.time_zone = "Beijing"

end
