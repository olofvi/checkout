require './lib/checkout.rb'

describe Checkout do
  it 'has products on initialize' do
    expected_output = [{:item=>{:name=>"Lavender heart", :code=>1, :price=>9.25}}, {:item=>{:title=>"Personalised cufflinks", :code=>2, :price=>45.0}}, {:code=>{:title=>"Kids T-shirt", :code=>3, :price=>19.95}}]
    expect(subject.products).to eq expected_output
  end

  it 'basket should be empty on initialize' do
    expected_output = basket = []
    expect(subject.basket).to eq expected_output
  end

  it 'it should return total of product code in basket' do
    expected_output = [1, 2]
    subject.scan(1)
    subject.scan(2)
    expect(subject.basket).to eq expected_output
  end

  it 'it should return total cost of products in basket' do
    expected_output = 9.25
    subject.cart(1)
    expect(subject.total).to eq expected_output
  end
end
