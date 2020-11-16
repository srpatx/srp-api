# frozen_string_literal: true

require "http"

module Srp
  module Api
    class RequestError < RuntimeError
      def initialize(response: , uri: , method: )
        super
        @response = response
        @uri = uri
        @method = method
      end

      attr_reader :response

      def to_s
        <<~MESSAGE
          #{@method.to_s.upcase} request to #{@uri} failed with code '#{@response.code}':
          #{@response}
        MESSAGE
      end
    end

    class NotConnected < RuntimeError
      def to_s
        "Not connected"
      end
    end
  end
end

require "srp/api/version"
require "srp/api/client"

