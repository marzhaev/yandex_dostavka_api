module YandexDostavkaApi
  module Entity
    class RequirementOption
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "text")]
      property text : String

      @[JSON::Field(key: "title")]
      property title : String

      @[JSON::Field(key: "value")]
      property value : Int32 | String
    end
  end
end
