module YandexDostavkaApi
  class CheckPrice < MethodsWrapper
    def self.fetch(client : Client, request : Request::CheckPrice) : Response::CheckPrice
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v1/check-price?"
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

      check_response(response, client)

      return Response::CheckPrice.from_json(response.body)
    end
  end
end
