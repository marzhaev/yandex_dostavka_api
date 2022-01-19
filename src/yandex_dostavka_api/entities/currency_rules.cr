module YandexDostavkaApi
  module Entity
    class CurrencyRules
      include JSON::Serializable
      include JSON::Serializable::Strict

      {% for f in ["code", "text", "template", "sign"] %}
        @[JSON::Field(key: {{ f.id.stringify}} )]
        property {{ f.id }} : String
      {% end %}
    end
  end
end
