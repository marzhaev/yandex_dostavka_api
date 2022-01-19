module YandexDostavkaApi
  module Request
    class ClaimsCancel
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "cancel_state" )]
      property cancel_state : Entity::CancelState

      @[JSON::Field(key: "version" )]
      property version : Int32

      def initialize(@cancel_state : Entity::CancelState, @version : Int32)
      end
    end
  end
end
