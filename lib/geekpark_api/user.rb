module GeekparkApi
  class User

    def self.update token, params = {}
      res = Faraday.patch GeekparkApi.config.user_api_base_uri do |req|
        req.headers['Authorization'] = "Bearer #{token}"
        req.body = params
      end

      {status: res.status, body: JSON.parse(res.body)}
    end

  end
end
