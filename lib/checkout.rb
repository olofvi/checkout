class Checkout
  attr_accessor :products, :basket, :promotional_disc, :total

  def initialize
    @products={001=>['Lavender heart' => 9.53], 002=>['Personalised cufflinks'=> 45.00], 003=>['Kids T-shirt'=> 19.95]}
    @basket=[]
    # @promotional_disc
    @total=total
  end


  # def scan
  #   basket << products
  # end
  #
  # def total
  #   total_products = 0
  # end
end
