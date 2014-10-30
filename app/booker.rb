require './app/all_requires'

module Booker
  class Service < Sinatra::Base

    post '/venues' do
      @venue = Venue.new(parsed_json)
      @venue.save
    end

    private

    def parsed_json
      @parsed_json ||= JSON.parse(request.body.read)
    end
  end
end