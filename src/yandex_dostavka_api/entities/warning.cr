module YandexDostavkaApi
  module Entity
    class Warning
      include JSON::Serializable
      include JSON::Serializable::Strict

      {% for f in ["source", "code", "message"] %}
        @[JSON::Field(key: {{ f.id.stringify}} )]
        property {{ f.id }} : String
      {% end %}
    end
  end
end
