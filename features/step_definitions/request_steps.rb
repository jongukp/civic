# frozen_string_literal: true

When(/^I send https GET request to \/elections$/) do
  @civic_api_ssl = CivicAPI.new('www.googleapis.com', true)
  @response = @civic_api_ssl.elections
end

When(/^I send http GET request to \/elections$/) do
  @civic_api_non_ssl = CivicAPI.new('www.googleapis.com')
  @response = @civic_api_non_ssl.elections
end

When(/^I send https GET request to \/elections with invalid key$/) do
  invalid_key = CommonVar::INVALID_API_KEY
  @civic_api_ssl = CivicAPI.new('www.googleapis.com', true)
  @response = @civic_api_ssl.elections(invalid_key)
end

When(/^I send https GET request to \/elections without valid key$/) do
  @civic_api_ssl = CivicAPI.new('www.googleapis.com', true)
  @response = @civic_api_ssl.elections_without_key
end
