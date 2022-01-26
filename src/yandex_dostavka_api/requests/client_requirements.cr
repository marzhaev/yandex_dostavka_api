module YandexDostavkaApi
  module Request
    class ClientRequirements
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "assign_robot" )]
      property assign_robot : Bool = false

      @[JSON::Field(key: "cargo_loaders" )]
      property cargo_loaders : Int32 = 0

      @[JSON::Field(key: "cargo_options" )]
      property cargo_options : Array(Entity::CourrierOptions) = [] of Entity::CourrierOptions

      @[JSON::Field(key: "cargo_type" )]
      property cargo_type : Entity::CargoType?

      @[JSON::Field(key: "pro_courier" )]
      property pro_courier : Bool = false

      @[JSON::Field(key: "taxi_class" )]
      property taxi_class : Entity::TaxiClass

      def initialize(@cargo_type : Entity::CargoType?, @taxi_class : Entity::TaxiClass)
      end
    end
  end
end
