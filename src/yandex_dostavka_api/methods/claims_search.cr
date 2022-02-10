module YandexDostavkaApi
  class ClaimsSearch < MethodsWrapper
    def self.fetch(client : Client, request : Request::ClaimsSearch) : Response::ClaimsSearch
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v2/claims/search"
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

      return Response::ClaimsSearch.from_json(response.body)
    end
  end
end
