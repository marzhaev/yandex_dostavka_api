module YandexDostavkaApi
  module Entity
    class Claim
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "id" )]
      property id : String

      @[JSON::Field(key: "corp_client_id" )]
      property corp_client_id : String

      @[JSON::Field(key: "items" )]
      property items : Array(Item)

      @[JSON::Field(key: "route_points" )]
      property route_points : Array(RoutePoint)

      @[JSON::Field(key: "current_point_id" )]
      property current_point_id : Int32

      @[JSON::Field(key: "status" )]
      property status : Status

      @[JSON::Field(key: "version" )]
      property version : Int32

      @[JSON::Field(key: "user_request_revision" )]
      property user_request_revision : String

      @[JSON::Field(key: "emergency_contact" )]
      property emergency_contact : Contact

      {% for f in ["skip_door_to_door", "skip_client_notify", "skip_emergency_notify", "skip_act", "optional_return"] %}
        @[JSON::Field(key: {{ f.id.stringify}} )]
        property {{ f.id }} : Bool
      {% end %}

      @[JSON::Field(key: "eta" )]
      property eta : Int32

      {% for f in ["created_ts", "updated_ts"] %}
        @[JSON::Field(key: {{ f.id.stringify}} )]
        property {{ f.id }} : Time
      {% end %}

      @[JSON::Field(key: "taxi_offer" )]
      property taxi_offer : PriceOffer

      @[JSON::Field(key: "pricing" )]
      property pricing : Pricing

      @[JSON::Field(key: "client_requirements" )]
      property client_requirements : CarInfo

      @[JSON::Field(key: "matched_cars" )]
      property matched_cars : Array(CarInfo)

      @[JSON::Field(key: "warnings" )]
      property warnings : Array(Warning)?

      @[JSON::Field(key: "performer_info" )]
      property performer_info : PerformerInfo?

      @[JSON::Field(key: "features" )]
      property features : Array(String)

      @[JSON::Field(key: "revision" )]
      property revision : Int32

      @[JSON::Field(key: "due" )]
      property due : Time?

      # Deprecated. Implemented in newly created claims. Use for backward compatibility.
      @[JSON::Field(key: "available_cancel_state" )]
      property available_cancel_state : Entity::CancelState?
    end

    enum Status
    New
    Estimating
    EstimatingFailed
    ReadyForApproval
    Accepted
    PerformerLookup
    PerformerDraft
    PerformerFound
    PerformerNotFound
    PickupArrived
    ReadyForPickupConfirmation
    Pickuped
    DeliveryArrived
    ReadyForDeliveryConfirmation
    PayWaiting
    Delivered
    DeliveredFinish
    Returning
    ReturnArrived
    ReadyForReturnConfirmation
    Returned
    ReturnedFinish
    Failed
    Cancelled
    CancelledWithPayment
    CancelledByTaxi
    CancelledWithItemsOnHands
    end
  end
end
