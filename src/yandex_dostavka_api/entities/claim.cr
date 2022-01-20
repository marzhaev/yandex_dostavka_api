module YandexDostavkaApi
  module Entity
    class Claim
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "id" )]
      property id : String

      @[JSON::Field(key: "corp_client_id" )]
      property corp_client_id : String

      @[JSON::Field(key: "callback_properties" )]
      property callback_properties : CallbackProperty?

      @[JSON::Field(key: "carrier_info" )]
      property carrier_info : CarrierInfo?

      @[JSON::Field(key: "comment" )]
      property comment : String?

      @[JSON::Field(key: "error_messages" )]
      property error_messages : Array(ErrorMessage)?

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

      def to_rus : String
        case self
        in New then "Новая - New"
        in Estimating then "Идёт оценка - Estimating"
        in EstimatingFailed then "Ошибка оценки - EstimatingFailed"
        in ReadyForApproval then "Готов к подтверждению - ReadyForApproval"
        in Accepted then "Принята - Accepted"
        in PerformerLookup then "Поиск курьера - PerformerLookup"
        in PerformerDraft then "Поиск курьера - PerformerDraft"
        in PerformerFound then "Курьер найден - PerformerFound"
        in PerformerNotFound then "Курьер не найден - PerformerNotFound"
        in PickupArrived then "Приехал на загрузку - PickupArrived"
        in ReadyForPickupConfirmation then "Готов к СМС на загрузку - ReadyForPickupConfirmation"
        in Pickuped then "Совершил забор - Pickuped"
        in DeliveryArrived then "Приехал на разгрузки - DeliveryArrived"
        in ReadyForDeliveryConfirmation then "Готов к СМС на разгрузку - ReadyForDeliveryConfirmation"
        in PayWaiting then "Ожидает оплаты - PayWaiting"
        in Delivered then "Завершена - Delivered"
        in DeliveredFinish then "Завершена - DeliveredFinish"
        in Returning then "Идёт возврат - Returning"
        in ReturnArrived then "Приехал на возврат - ReturnArrived"
        in ReadyForReturnConfirmation then "Готов к СМС на возврат - ReadyForReturnConfirmation"
        in Returned then "Вернул - Returned"
        in ReturnedFinish then "Вернул - ReturnedFinish"
        in Failed then "Ошибка - Failed"
        in Cancelled then "Отменена - Cancelled"
        in CancelledWithPayment then "Отменена с оплатой - CancelledWithPayment"
        in CancelledByTaxi then "Отменена курьером - CancelledByTaxi"
        in CancelledWithItemsOnHands then "Отменена, товар не вернули - CancelledWithItemsOnHands"
        end
      end
    end
  end
end
