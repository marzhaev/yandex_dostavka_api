require "./responses/*"
require "./methods/methods_wrapper"
require "./entities/*"
require "./methods/*"
require "./requests/*"


module YandexDostavkaApi
  class Client
    property api_token : String

    def initialize(@api_token : String)
    end

    # Methods for Yandex Dostavka API
    def claims_cancel(claim_id : String, request : Request::ClaimsCancel) : String
      ClaimsCancel.fetch(self, claim_id, request)
    end

    def claims_create(request_id : String, request : Request::ClaimsCreate) : String
      ClaimsCreate.fetch(self, request_id, request)
    end

    def claims_info(claim_id : String) : Entity::Claim
      ClaimsInfo.fetch(self, claim_id)
    end

    def claims_search(request : Request::ClaimsSearch) : Response::ClaimsSearch
      ClaimsSearch.fetch(self, request)
    end

    def claims_search_active(request : Request::ClaimsSearchActive) : Response::ClaimsSearchActive
      ClaimsSearchActive.fetch(self, request)
    end

    def tariffs(longitude : Float32, latitude : Float32) : String
      Tariffs.fetch(self, longitude, latitude)
    end

    # Convenience methods

  end
end
