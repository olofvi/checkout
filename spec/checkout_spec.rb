require './lib/checkout.rb'

  describe Checkout do

    it 'has products on initialize' do
      expected_output = [{:item=>{:name=>"Lavender heart", :code=>1, :price=>9.25}}, {:item=>{:title=>"Personalised cufflinks", :code=>2, :price=>45.0}}, {:item=>{:title=>"Kids T-shirt", :code=>3, :price=>19.95}}]
      expect(subject.product).to eq expected_output
    end

    it 'basket should be empty on initialize' do
      expected_output = basket = []
      expect(subject.basket).to eq expected_output
    end

    it 'it should return total of products in basket' do
      expected_output= [1,2]
      subject.scan(1)
      subject.scan(2)
      expect(subject.basket).to eq expected_output
    end
  end
