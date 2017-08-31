require './lib/checkout.rb'

  describe Checkout do

    it 'has products on initialize' do
      expected_output = {1=>['Lavender heart' => 9.53],2=>['Personalised cufflinks'=> 45.00],3=>['Kids T-shirt'=> 19.95]}
      expect(subject.products).to eq expected_output
    end
  end
