require 'singleton'
module GeekparkApi
  class Configuration
    include Singleton

    attr_accessor :app_id, :app_secret, :signature, :user_api_base_uri, :event_api_base_uri

    def self.defaults
      @defaults ||= {
        user_api_base_uri: 'http://www.geekpark.net/api/v1/user',
        signature: ENV['event_signature']
      }
    end

    def initialize
      self.class.defaults.each_pair { |k, v| send("#{k}=", v) }
    end

  end
end
