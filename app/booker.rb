require './app/all_requires'

module Booker
  class Service < Sinatra::Base

    private

    def parsed_json
      @parsed_json ||= JSON.parse(request.body.read)
    end
  end
end