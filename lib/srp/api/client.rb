module Srp::Api::Client
  REDIRECTION_ATTEMPTS = 10

  private

  def authenticated(http)
    http.auth("Bearer #{token}")
  end

  def check_for_errors!(response, method, uri)
    raise Srp::Api::RequestError.new(response: response, method: method, uri: uri) if error?(response)
  end

  def error?(response)
    response.status.client_error? || response.status.server_error?
  end
end

