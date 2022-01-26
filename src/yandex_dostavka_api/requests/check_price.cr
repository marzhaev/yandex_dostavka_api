module YandexDostavkaApi
  module Request
    class CheckPrice
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "items" )]
      property items : Array(Entity::Item)

      @[JSON::Field(key: "route_points" )]
      property route_points : Array(RoutePoint)

      @[JSON::Field(key: "requirements" )]
      property requirements : Request::ClientRequirements?

      def initialize(@items : Array(Entity::Item), @route_points : Array(RoutePoint), @requirements : Request::ClientRequirements? = nil)
      end

      struct RoutePoint
        include JSON::Serializable
        include JSON::Serializable::Strict

        @[JSON::Field(key: "coordinates" )]
        property coordinates : Array(Float64)

        def initialize(@coordinates : Array(Float64))
        end
      end
    end
  end
end
