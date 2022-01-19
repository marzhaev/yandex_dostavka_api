require "./spec_helper"

describe YandexDostavkaApi::Entity::Tariff do
  it "parses response's fields" do
    content = File.read("./spec/tariffs_input.json")
    obj = YandexDostavkaApi::Response::Tariffs.from_json(content)
    
    first_tariff = obj.available_tariffs[0]
    first_tariff.minimal_price.should eq(129.0)
    first_tariff.name.should eq("courier")
    first_tariff.text.should eq("Для небольших вещей и документов")
    first_tariff.title.should eq("Курьер")
    first_requirement = first_tariff.supported_requirements[0]
    first_requirement.required.should be_false
    first_requirement.title.should eq("Дополнительные опции")
    first_requirement.type.multi_select?.should be_true
    first_requirement.options[0].value.should eq("thermobag")

    second_tariff = obj.available_tariffs[1]
  end
end
