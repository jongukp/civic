# frozen_string_literal: true

require 'httparty'
# Civic API
class CivicAPI
  include BaseAPI
  include HTTParty

  def base_path
    '/civicinfo/v2'
  end

  # List of available elections to query.
  #
  # @return [HTTParty::Response] Result from the web server,
  # containing JSON results of elections data
  def elections(key = api_key)
    uri = "#{base_path}/elections"
    handle_timeouts do
      self.class.get(uri, query: { key: key })
    end
  end

  def elections_without_key
    uri = "#{base_path}/elections"
    handle_timeouts do
      self.class.get(uri)
    end
  end
end
