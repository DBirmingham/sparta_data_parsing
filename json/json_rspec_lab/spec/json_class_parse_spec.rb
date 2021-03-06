require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a Hash' do
    expect(@exchange_rates.json_file).to be_a Hash
  end

  it 'should contain the base as EUR' do
    expect(@exchange_rates.base).to eq "EUR"
  end

  it "Should have a date string" do
    expect(@exchange_rates.date).to be_a String
  end

  it "should countain 31 rates" do
    expect(@exchange_rates.number_of_rate_keys).to eq 31
    expect(@exchange_rates.number_of_rate_values).to eq 31

    # A more complete test

    # @key_num = 0
    # @value_num = 0

    # @exchange_rates.json_file["rates"].each do |k,v|
    #   @key_num += 1
    #   @value_num += 1
    # end

    # expect(@key_num).to eq 31
    # expect(@value_num).to eq 31

  end

  it "should return all rates as Floats" do
    @exchange_rates.rate_values.each do |i|
      expect(i).to be_a Float
    end
  end

end