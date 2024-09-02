require "seo_helper/version"
require "seo_helper/configuration"
require "seo_helper/format"
require "seo_helper/view_helper"
require "seo_helper/controller_helper"
require "seo_helper/railtie" if defined?(Rails)

module SeoHelper
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset
    @configuration = Configuration.new
  end
end
