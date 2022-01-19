module YandexDostavkaApi
  module Entity
    class ErrorMessage
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "code" )]
      property code : String

      @[JSON::Field(key: "message" )]
      property message : String
    end
  end
end
