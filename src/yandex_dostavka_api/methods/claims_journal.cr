module YandexDostavkaApi
  class ClaimsJournal < MethodsWrapper
    def self.fetch(client : Client, cursor : String?) : Entity::Journal
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v1/claims/journal"
      end

      body = if c = cursor
        {"cursor" => c}.to_json
      else
        ""
      end

      response = HTTP::Client.post(
        url: url,
        headers: HTTP::Headers{
          "Accept" => "application/json",
          "Authorization" => "Bearer #{client.api_token}",
          "Accept-Language" => "ru"
        },
        body: body
      )

      check_response(response, client)

      return Entity::Journal.from_json(response.body)
    end
  end
end
