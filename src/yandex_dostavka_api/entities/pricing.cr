module YandexDostavkaApi
  module Entity
    class Pricing
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "offer" )]
      property offer : PriceOffer?

      @[JSON::Field(key: "currency" )]
      property currency : String?

      @[JSON::Field(key: "currency_rules" )]
      property currency_rules : CurrencyRules?

      @[JSON::Field(key: "final_pricing_calc_id" )]
      property final_pricing_calc_id : String?

      @[JSON::Field(key: "final_price" )]
      property final_price : String?
    end
  end
end
