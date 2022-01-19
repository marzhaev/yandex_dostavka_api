require "./spec_helper"

module YandexDostavkaApi
  describe Request::RoutePoint do
    it "serializes Request::RoutePoint correctly" do
      route_point_one = Request::RoutePoint.new(
        address: Entity::Address.new(fullname: "Санкт-Петербург, Большая Монетная улица, 1к1А", coordinates: [37.311247, 55.971219]),
        contact: Entity::Contact.new(name: "Михаил", phone: "+71234567890", email: "aaa@bbb.com"),
        point_id: 1,
        type: Entity::RoutePointType::Source,
        visit_order: 1
      )

      route_point_one.to_json.should be_a(String)
    end

    it "serializes Request::RoutePoint correctly" do
      route_point_one = Request::RoutePoint.new(
        address: Entity::Address.new(fullname: "Санкт-Петербург, Большая Монетная улица, 1к1А", coordinates: [37.311247, 55.971219]),
        contact: Entity::Contact.new(name: "Михаил", phone: "+71234567890", email: "aaa@bbb.com"),
        point_id: 1,
        type: Entity::RoutePointType::Source,
        visit_order: 1
      )

      my_comment = "My comment"
      route_point_one.comment = my_comment

      route_point_one.address.comment.should eq(my_comment)
      route_point_one.to_json.should contain(my_comment)
    end
  end
end
