module YandexDostavkaApi
  class ClaimsAccept < MethodsWrapper
    def self.fetch(client : Client, claim_id : String, version : Int32) : Response::ClaimsCreateOrCancel
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v1/claims/accept?"
        io << "claim_id="
        io << claim_id
      end

      body = {"version" => version}

      response = HTTP::Client.post(
        url: url,
        headers: HTTP::Headers{
          "Accept" => "application/json",
          "Authorization" => "Bearer #{client.api_token}",
          "Accept-Language" => "ru"
        },
        body: body.to_json
      )

      check_response(response, client)

      return Response::ClaimsCreateOrCancel.from_json(response.body)
    end
  end
end
