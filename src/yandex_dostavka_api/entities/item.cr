module YandexDostavkaApi
  module Entity
    class Item
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "pickup_point")]
      property pickup_point : Int64

      @[JSON::Field(key: "droppof_point")]
      property droppof_point : Int64

      @[JSON::Field(key: "title")]
      property title : String

      @[JSON::Field(key: "size")]
      property size : Size

      @[JSON::Field(key: "fiscalization")]
      property fiscalization : Fiscalization?

      @[JSON::Field(key: "weight")]
      property weight : Float64

      @[JSON::Field(key: "cost_value")]
      getter cost_value : String

      @[JSON::Field(key: "cost_currency")]
      property cost_currency : String = "RUB"

      @[JSON::Field(key: "quantity")]
      property quantity : Int32

      # Номер заказа в рамках заявки, как правило идентичен external_order_id
      @[JSON::Field(key: "extra_id")]
      property extra_id : String?

      # fiscalization
      def initialize(@pickup_point : Int64 = 0, @droppof_point : Int64 = 0, @title : String = "Товары", @size : Size = Size.new(0, 0, 0), @weight : Float64 = 0.0, @quantity : Int32 = 1, cost_value : Float64 = 0.0, @extra_id : String? = nil)
        @cost_value = cost_value.to_s
      end

      def cost_value=(value : String)
        @cost_value = value
      end

      def cost_value=(value : Float64)
        @cost_value = value.to_s
      end
    end
  end
end
