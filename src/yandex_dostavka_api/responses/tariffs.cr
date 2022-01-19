module YandexDostavkaApi
  module Response
    class Tariffs
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "available_tariffs" )]
      property available_tariffs : Array(Entity::Tariff)
    end
  end
end
