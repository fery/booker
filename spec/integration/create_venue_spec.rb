require 'spec_helper'

describe 'Creating a venue' do
  let(:correct_venue) do
    { :name => "Venue name" }
  end

  it 'successfully creates a venue' do
    expect { post 'venues', correct_venue.to_json }.to change { Venue.count }
  end
end