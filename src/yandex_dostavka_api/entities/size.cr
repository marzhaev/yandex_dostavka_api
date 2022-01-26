module YandexDostavkaApi
  module Entity
    class Size
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "length")]
      property length : Float64

      @[JSON::Field(key: "width")]
      property width : Float64

      @[JSON::Field(key: "height")]
      property height : Float64

      def initialize(@length : Float64, @width : Float64, @height : Float64)
      end
    end
  end
end
