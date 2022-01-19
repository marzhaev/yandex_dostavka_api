require "./spec_helper"

describe YandexDostavkaApi::Response::ClaimsCreateOrCancel do
  it "parses response executed claim" do
    content = File.read("./spec/claims_cancel_input.json")
    obj = YandexDostavkaApi::Response::ClaimsCreateOrCancel.from_json(content)
    obj.id.should eq("f4cc29a88c304ddab73f41451dc2394e")
    obj.status.cancelled?.should be_true
    obj.version.should eq(1)
    obj.user_request_revision.should eq("1")
    obj.skip_client_notify.should be_false
  end
end
