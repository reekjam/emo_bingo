require 'spec_helper'

describe 'Band' do
  it 'should require a name' do
    band = Band.new name: nil

    expect(band).to_not be_valid
  end
end