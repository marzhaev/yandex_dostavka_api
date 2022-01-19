module YandexDostavkaApi
  class ClaimsInfo < MethodsWrapper
    def self.fetch(client : Client, claim_id : String) : Entity::Claim
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v2/claims/info?"
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
        body: ""
      )

      check_response(response)

      puts response.body

      return Entity::Claim.from_json(response.body)
    end
  end
end
