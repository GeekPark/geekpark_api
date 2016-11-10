module GeekparkApi
  class Activities
    class << self
      def find id, params = {}
        res = Faraday.get "#{GeekparkApi.config.event_api_base_uri}/activities/#{id}", params

        {status: res.status, body: JSON.parse(res.body)}
      end
    end
  end
end
