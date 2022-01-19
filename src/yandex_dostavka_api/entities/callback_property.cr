module YandexDostavkaApi
  module Entity
    class CallbackProperty
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "callback_url" )]
      property callback_url : String
    end
  end
end
