# frozen_string_literal: true

# spec/dollar_spec.rb
require 'dollar'

RSpec.describe 'Dollar' do
  it 'multiplication' do
    five = Dollar.new(5)

    # 1回目の掛け算：2 * 5 = 10 を期待
    five.times(2)
    expect(five.amount).to eq 10

    # 2回目の掛け算：元の five は 5 のままであり、 5 * 3 = 15 を期待
    five.times(3)
    expect(five.amount).to eq 15
  end
end
