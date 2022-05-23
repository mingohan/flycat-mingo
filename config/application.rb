# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
Time::DATE_FORMATS.merge!(:default => '%Y/%m/%d %H:%M:%S', :ymd => '%Y/%m/%d')
module Flycat
  class Application < Rails::Application
    config.load_defaults 6.1
    config.exceptions_app = routes
    config.i18n.available_locales = %i[en zh-TW]
    config.i18n.default_locale = :'zh-TW'
    # config.hosts << "flycat.works"
    config.hosts << "014e-2001-b400-e23c-6d34-1d88-b97-503f-dcba.jp.ngrok.io"
    config.action_controller.forgery_protection_origin_check = false
    config.time_zone = "Taipei"
    config.active_record.default_timezone = :local
    config.i18n.available_locales = [:en, :'zh-TW']
    config.i18n.default_locale = :'zh-TW'
  end
end
