module YandexDostavkaApi
  module Response
    class ClaimsCancel
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "id" )]
      property id : String

      @[JSON::Field(key: "status" )]
      property status : Entity::Status

      @[JSON::Field(key: "version" )]
      property version : Int32

      @[JSON::Field(key: "user_request_revision" )]
      property user_request_revision : String

      @[JSON::Field(key: "skip_client_notify" )]
      property skip_client_notify : Bool
    end
  end
end
