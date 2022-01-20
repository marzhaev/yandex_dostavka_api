module YandexDostavkaApi
  module Entity
    class Fiscalization
      include JSON::Serializable
      include JSON::Serializable::Strict

      @[JSON::Field(key: "article" )]
      property article : String

      @[JSON::Field(key: "excise" )]
      property excise : String

      @[JSON::Field(key: "item_type" )]
      property item_type : String?

      @[JSON::Field(key: "supplier_inn", converter: SupplierInnConverter )]
      property supplier_inn : String?

      @[JSON::Field(key: "vat_code_str" )]
      property vat_code_str : String
    end


  end
end

private struct SupplierInnConverter
  def self.from_json(pull : JSON::PullParser) : String?
    case
    when pull.kind.string?
      return pull.read_string
    when pull.kind.int?
      return pull.read_int.to_s
    else
      return nil
    end
  end

  def self.to_json(value : String, json : JSON::Builder)
    json.string value
  end
end
