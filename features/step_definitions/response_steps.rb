# frozen_string_literal: true

Then(/^I should get (\d+) response code$/) do |code|
  expect(@response.code).to be code
end

Then(/^the response payload fits the required JSON schema$/) do
  schema_path = CommonVar::SCHEMA_DIRECTORY + CommonVar::ELECTIONS_SCHEMA
  expect(JSON::Validator.validate!(schema_path, @response.parsed_response, strict: true)).to be true
end
