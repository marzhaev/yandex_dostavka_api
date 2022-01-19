module YandexDostavkaApi
  class Tariffs < MethodsWrapper
    def self.fetch(client : Client, longitude : Float32, latitude : Float32) : String
      url = String.build do |io|
        io << "https://b2b.taxi.yandex.net/b2b/cargo/integration/v1/tariffs?"
      end

      response = HTTP::Client.post(
        url: url,
        headers: HTTP::Headers{
          "Accept" => "application/json",
          "Authorization" => "Bearer #{client.api_token}",
          "Accept-Language" => "ru"
        },
        body: "{\"start_point\":[#{longitude},#{latitude}]}"
      )

      check_response(response)

      puts response.body
      return response.body
      # return Entity::Claim.from_json(response.body)
    end
  end
end
