# frozen_string_literal: true

# spec/dollar_spec.rb
require 'dollar'

RSpec.describe 'Dollar' do
  it 'multiplication' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq 10
  end
end
