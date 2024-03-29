module YandexDostavkaApi
  module Request
    class ClaimsCreate
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "callback_properties" )]
      property callback_properties : Entity::CallbackProperty?

      @[JSON::Field(key: "client_requirements" )]
      property client_requirements : Request::ClientRequirements?

      # Комментарий для водителя
      @[JSON::Field(key: "comment" )]
      property comment : String?

      @[JSON::Field(key: "due" )]
      property due : Time?

      @[JSON::Field(key: "emergency_contact" )]
      property emergency_contact : Entity::Contact

      @[JSON::Field(key: "items" )]
      property items : Array(Entity::Item)

      @[JSON::Field(key: "optional_return" )]
      property optional_return : Bool = false

      @[JSON::Field(key: "referral_source" )]
      property referral_source : String?

      @[JSON::Field(key: "route_points" )]
      property route_points : Array(Request::RoutePoint)

      def initialize(@client_requirements : Request::ClientRequirements? = nil, emergency_contact : Entity::Contact? = nil, @items : Array(Entity::Item) = [] of Entity::Item, @route_points : Array(Request::RoutePoint) = [] of Request::RoutePoint)
        if ec = emergency_contact
          @emergency_contact = ec
        else
          @emergency_contact = Entity::Contact.new(name: "Без имени", phone: "Неправильный телефон")
        end
      end
    end
  end
end
