module YandexDostavkaApi
  module Entity
    class PriceOffer
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "offer_id" )]
      property offer_id : String

      @[JSON::Field(key: "price_raw" )]
      property price_raw : Int32

      @[JSON::Field(key: "price" )]
      property price : String

      @[JSON::Field(key: "valid_until")]
      property valid_until : Time?
    end
  end
end
