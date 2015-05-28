require "faraday"
require "json"
require "geekpark_api/version"
require "geekpark_api/sign"
require "geekpark_api/configuration"
require "geekpark_api/orders"
require "geekpark_api/users"
require "geekpark_api/activities"

module GeekparkApi
  extend self
  #config

  def config
    @config ||= Configuration.new
  end

  def configure
    yield(config)
  end

end
