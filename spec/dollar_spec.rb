# frozen_string_literal: true

require 'dollar'

RSpec.describe 'Dollar' do
  it 'multiplication' do
    five = Dollar.new(5)

    # timesメソッドが新しいオブジェクトを返すと定義する
    product = five.times(2)
    expect(product.amount).to eq 10

    # 元の five オブジェクトは 5ドルのままであることを期待する
    product = five.times(3)
    expect(product.amount).to eq 15
  end

  it 'equality' do
    # $5 と $5 は等しい（True）
    expect(Dollar.new(5)).to eq Dollar.new(5)

    # 2つ目のテスト：$5 と $6 は等しくない
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
  end
end
