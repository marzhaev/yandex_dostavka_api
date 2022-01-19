module YandexDostavkaApi
  module Entity
    class Address
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "fullname")]
      property fullname : String

      @[JSON::Field(key: "shortname")]
      property shortname : String?

      @[JSON::Field(key: "coordinates")]
      property coordinates : Array(Float64)

      {% for f in ["country", "city", "street", "building", "uri", "description"] %}
        @[JSON::Field(key: {{ f.id.stringify }})]
        property {{ f.id }} : String?
      {% end %}

      @[JSON::Field(key: "comment")]
      property comment : String?

      def initialize(@fullname : String, @coordinates : Array(Float64))
      end
    end
  end
end
