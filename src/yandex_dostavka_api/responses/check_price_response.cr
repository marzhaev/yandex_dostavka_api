module YandexDostavkaApi
  module Response
    class CheckPrice
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "price" )]
      property price : String

      @[JSON::Field(key: "currency_rules" )]
      property currency_rules : Entity::CurrencyRules

      @[JSON::Field(key: "requirements" )]
      property requirements : Entity::CarInfo

      @[JSON::Field(key: "distance_meters" )]
      property distance_meters : Float64

      @[JSON::Field(key: "eta" )]
      property eta : Float64

      @[JSON::Field(key: "zone_id" )]
      property zone_id : String
    end
  end
end
