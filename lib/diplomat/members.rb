require 'base64'
require 'faraday'

module Diplomat
  class Members < Diplomat::RestClient
    @access_methods = [ :get ]

    # Get all members
    # @return [OpenStruct] all data associated with the service
    def get
      ret = @conn.get "/v1/agent/members"
      return JSON.parse(ret.body)
    end
  end
end
