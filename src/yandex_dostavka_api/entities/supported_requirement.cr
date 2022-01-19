module YandexDostavkaApi
  module Entity
    class SupportedRequirement
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "name")]
      property name : String

      @[JSON::Field(key: "title")]
      property title : String

      @[JSON::Field(key: "text")]
      property text : String

      @[JSON::Field(key: "type")]
      property type : SupportedType

      @[JSON::Field(key: "required")]
      property required : Bool

      @[JSON::Field(key: "options")]
      property options : Array(RequirementOption)
    end

    enum SupportedType
    Select
    MultiSelect
    end
  end
end
