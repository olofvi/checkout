require 'yaml'

class Checkout
  attr_accessor :products, :basket, :promotional_disc, :total

  def initialize
    @products = product
    # @promotional_disc
    @basket = []
    @total = 0.00
  end

  def product
    YAML.load_file('./lib/products.yml')
  end

  def item_code
    product.select { |obj| obj[:item][:code] }
  end

  def scan(item_code)
    @basket.push(item_code)
  end

  def cart(product)
    @basket.push(product)
  end

    def total_cost
      cart.each do |code|
         product = @products.detect { |obj| obj[:product][:code] == code }
        @total_value += product[:product][:price]
      end
  end
end
