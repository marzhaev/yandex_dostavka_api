module YandexDostavkaApi
  module Entity
    class CarrierInfo
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "address" )]
      property address : String

      @[JSON::Field(key: "inn" )]
      property inn : String

      @[JSON::Field(key: "name" )]
      property name : String
    end
  end
end
