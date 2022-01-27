# Varies in details between Entity::RoutePoint and Request::RoutePoint
module YandexDostavkaApi
  module Entity
    class RoutePoint
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "address")]
      property address : Address

      @[JSON::Field(key: "contact")]
      property contact : Contact

      # external_order_cost?

      @[JSON::Field(key: "external_order_id")]
      property external_order_id : String?

      @[JSON::Field(key: "id")]
      property id : Int32

      @[JSON::Field(key: "leave_under_door")]
      property leave_under_door : Bool

      @[JSON::Field(key: "meet_outside")]
      property meet_outside : Bool

      @[JSON::Field(key: "no_door_call")]
      property no_door_call : Bool

      # payment_on_delivery?

      # pickup_code?

      # return_comment?

      @[JSON::Field(key: "skip_confirmation")]
      property skip_confirmation : Bool?


      @[JSON::Field(key: "type")]
      property type : RoutePointType

      @[JSON::Field(key: "visit_order")]
      property visit_order : Int32

      @[JSON::Field(key: "visit_status")]
      property visit_status : String

      @[JSON::Field(key: "visited_at")]
      property visited_at : VisitedAt
    end

    enum RoutePointType
    Source
    Destination
    Return
    end
  end
end
