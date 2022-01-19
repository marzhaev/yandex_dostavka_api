module YandexDostavkaApi
  module Request
    class ClaimsSearch
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "limit" )]
      property limit : Int32

      @[JSON::Field(key: "offset" )]
      property offset : Int32

      def initialize(@limit : Int32, @offset : Int32)
      end
    end
  end
end
