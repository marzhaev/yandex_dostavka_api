module YandexDostavkaApi
  class ClaimsCancel < MethodsWrapper
    def self.fetch(client : Client, claim_id : String, request : Request::ClaimsCancel) : Response::ClaimsCreateOrCancel
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v1/claims/cancel?"
        io << "claim_id="
        io << claim_id
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

      check_response(response)

      return Response::ClaimsCreateOrCancel.from_json(response.body)
    end
  end
end
