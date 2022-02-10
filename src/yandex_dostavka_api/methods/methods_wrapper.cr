module YandexDostavkaApi
  class MethodsWrapper
    def self.check_response(response : HTTP::Client::Response, client : Client)
      if client.print_responses
        puts {{ @type.name.stringify }}
        puts response.body
      end

      raise Exceptions::Unauthenticated.new("Ошибка авторизации") if response.status_code == 401
      if response.status_code >= 400 && response.status_code < 500
        raise Exceptions::WrongRequest.new("Ошибка запроса с кодом #{response.status_code} #{response.status} and body #{response.body}")
      end
    end
  end
end
