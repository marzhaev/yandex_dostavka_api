module YandexDostavkaApi
  module Entity
    class CarInfo
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "taxi_class" )]
      property taxi_class : TaxiClass

      @[JSON::Field(key: "cargo_type" )]
      property cargo_type : CargoType?

      @[JSON::Field(key: "cargo_type_int")]
      property cargo_type_int : Int32?

      @[JSON::Field(key: "door_to_door")]
      property door_to_door : Bool?

      @[JSON::Field(key: "cargo_loaders")]
      property cargo_loaders : Int32?

      @[JSON::Field(key: "cargo_options" )]
      property cargo_options : Array(Entity::CourrierOptions) = [] of Entity::CourrierOptions

      @[JSON::Field(key: "pro_courier" )]
      property pro_courier : Bool = false

      @[JSON::Field(key: "assign_robot" )]
      property assign_robot : Bool = false
    end

    enum TaxiClass
    Courier
    Express
    Cargo
    Cargocorp
    end

    enum CargoType
    Van = 1
    LcvM = 2
    LcvL = 3
    Sedan = 4
    end
  end
end
