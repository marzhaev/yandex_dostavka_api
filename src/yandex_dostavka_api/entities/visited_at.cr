module YandexDostavkaApi
  module Entity
    class VisitedAt
      include JSON::Serializable
      include JSON::Serializable::Strict

      {% for f in ["actual", "expected"] %}
        @[JSON::Field(key: {{ f.id.stringify }})]
        property {{ f.id }} : Time?
      {% end %}

      @[JSON::Field(key: "expected_waiting_time_sec")]
      property expected_waiting_time_sec : Int32?
    end
  end
end
