module YandexDostavkaApi
  module Entity
    class Item
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "pickup_point")]
      property pickup_point : Int32

      @[JSON::Field(key: "droppof_point")]
      property droppof_point : Int32

      @[JSON::Field(key: "title")]
      property title : String

      @[JSON::Field(key: "size")]
      property size : Size

      @[JSON::Field(key: "fiscalization")]
      property fiscalization : Fiscalization?

      @[JSON::Field(key: "weight")]
      property weight : Float32

      @[JSON::Field(key: "cost_value")]
      property cost_value : String

      @[JSON::Field(key: "cost_currency")]
      property cost_currency : String = "RUB"

      @[JSON::Field(key: "quantity")]
      property quantity : Int32

      # Номер заказа в рамках заявки, как правило идентичен external_order_id
      @[JSON::Field(key: "extra_id")]
      property extra_id : String?

      # fiscalization
      def initialize(@pickup_point : Int32, @droppof_point : Int32, @title : String, @size : Size, @weight : Float32, @quantity : Int32, cost_value : Float64, @extra_id : String? = nil)
        @cost_value = cost_value.to_s
      end
    end
  end
end
