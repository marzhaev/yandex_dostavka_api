module YandexDostavkaApi
  module Entity
    class Journal
      include JSON::Serializable

      @[JSON::Field(key: "cursor" )]
      property cursor : String

      @[JSON::Field(key: "events" )]
      property events : Array(Event)
    end

    class Event
      include JSON::Serializable

      @[JSON::Field(key: "change_type" )]
      property change_type : ChangeType

      @[JSON::Field(key: "claim_id" )]
      property claim_id : String

      @[JSON::Field(key: "claim_origin" )]
      property claim_origin : String?

      @[JSON::Field(key: "client_id" )]
      property client_id : String?

      @[JSON::Field(key: "current_point_id" )]
      property current_point_id : Int32?

      @[JSON::Field(key: "new_currency" )]
      property new_currency : String?

      @[JSON::Field(key: "new_price" )]
      property new_price : String?

      @[JSON::Field(key: "new_status" )]
      property new_status : Status?

      @[JSON::Field(key: "operation_id" )]
      property operation_id : Int32

      @[JSON::Field(key: "resolution" )]
      property resolution : Resolution?

      @[JSON::Field(key: "revision" )]
      property revision : Int32

      @[JSON::Field(key: "updated_ts" )]
      property updated_ts : Time
    end

    enum ChangeType
      StatusChanged
      PriceChanged
    end

    enum Resolution
      Success
      Failed
    end
  end
end
