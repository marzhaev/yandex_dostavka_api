module YandexDostavkaApi
  module Entity
    class PerformerInfo
      include JSON::Serializable
      include JSON::Serializable::Strict

      {% for f in ["courier_name", "legal_name", "car_model", "car_number", "car_color", "car_color_hex", "transport_type"] %}
        @[JSON::Field(key: {{ f.id.stringify}} )]
        property {{ f.id }} : String
      {% end %}
    end
  end
end
