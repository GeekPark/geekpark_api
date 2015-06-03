require "faraday"
require "json"
require "geekpark_api/version"
require "geekpark_api/configuration"
require "geekpark_api/sign"
require "geekpark_api/orders"
require "geekpark_api/user"
require "geekpark_api/activities"

module GeekparkApi
  class <<  self
    #config

    def config
      Configuration.instance
    end

    def configure
      yield(config)
    end
  end

end
