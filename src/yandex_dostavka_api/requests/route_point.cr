# Varies in details between Entity::RoutePoint and Request::RoutePoint
module YandexDostavkaApi
  module Request
    class RoutePoint
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "point_id")]
      property point_id : Int32

      @[JSON::Field(key: "contact")]
      property contact : Entity::Contact

      @[JSON::Field(key: "address")]
      property address : Entity::Address

      @[JSON::Field(key: "type")]
      property type : Entity::RoutePointType

      @[JSON::Field(key: "visit_order")]
      property visit_order : Int32

      # Пропускать подтверждение через SMS в данной точке
      @[JSON::Field(key: "skip_confirmation")]
      property skip_confirmation : Bool = true

      # Номер заказа из системы клиента. Передается для точки с типом destination
      @[JSON::Field(key: "external_order_id")]
      property external_order_id : String?

      def initialize(@address : Entity::Address, @contact : Entity::Contact, @point_id : Int32, @type : Entity::RoutePointType, @visit_order : Int32)
      end

      def comment=(value : String)
        @address.comment = value
      end
    end
  end
end
