module YandexDostavkaApi
  module Entity
    class Tariff
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "minimal_price")]
      property minimal_price : Float64

      @[JSON::Field(key: "name")]
      property name : String

      @[JSON::Field(key: "text")]
      property text : String

      @[JSON::Field(key: "title")]
      property title : String

      # Not yet implemented
      @[JSON::Field(key: "supported_requirements")]
      property supported_requirements : Array(SupportedRequirement)
    end
  end
end
