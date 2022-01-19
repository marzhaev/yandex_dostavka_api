module YandexDostavkaApi
  module Entity
    class Size
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "length")]
      property length : Float32

      @[JSON::Field(key: "width")]
      property width : Float32

      @[JSON::Field(key: "height")]
      property height : Float32

      def initialize(@length : Float32, @width : Float32, @height : Float32)
      end
    end
  end
end
