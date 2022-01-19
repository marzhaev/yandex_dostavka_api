module YandexDostavkaApi
  module Response
    class ClaimsSearchActive
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "claims" )]
      property claims : Array(Entity::Claim)
    end
  end
end
