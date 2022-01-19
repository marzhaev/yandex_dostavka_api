module YandexDostavkaApi
  module Entity
    class Contact
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "name")]
      property name : String

      @[JSON::Field(key: "phone")]
      property phone : String

      @[JSON::Field(key: "email")]
      property email : String?

      def initialize(@name : String, phone : String, @email : String? = nil)
        raise Exception.new("Телефона должен быть в формате +7XXXXXXXXXX") unless phone.matches?(/\+7\d+$/)
        @phone = phone
      end
    end
  end
end
