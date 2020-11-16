# frozen_string_literal: true

require "active_support/core_ext/module/delegation"

RSpec::Matchers.define :make_http_request do |method|
  supports_block_expectations

  chain :to do |uri|
    @uri = uri
  end

  chain :with_headers do |headers|
    @headers = headers
  end

  chain :with_body do |body|
    @body = body
  end

  chain :with_query do |query|
    @query = query
  end

  chain :returning do |response_body|
    @response_body = response_body
  end

  match do |action|
    raise "WHERE'S THE BEEF??? (and by beef, I mean URI)" unless @uri

    requirements = {}
    requirements[:headers] = @headers if @headers
    requirements[:body] = @body if @body
    requirements[:query] = @query if @query
    pattern = WebMock::RequestPattern.new(method, @uri, requirements)

    action.call

    @verifier = WebMock::RequestExecutionVerifier.new(pattern)
    @verifier.matches?
  end

  attr_reader :verifier

  delegate :failure_message, :failure_message_when_negated, to: :verifier
end

