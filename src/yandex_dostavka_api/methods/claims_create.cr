module YandexDostavkaApi
  class ClaimsCreate < MethodsWrapper
    def self.fetch(client : Client, request_id : String, request : Request::ClaimsCreate) : String
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v2/claims/create?"
        io << "request_id="
        io << request_id
      end

      response = HTTP::Client.post(
        url: url,
        headers: HTTP::Headers{
          "Accept" => "application/json",
          "Authorization" => "Bearer #{client.api_token}",
          "Accept-Language" => "ru"
        },
        body: request.to_json
      )

      if client.print_responses
        puts "ClaimsCreate - Request:"
        puts request.to_json
      end

      check_response(response, client)

      json = JSON.parse(response.body)
      return json["id"].as_s
    end
  end
end
