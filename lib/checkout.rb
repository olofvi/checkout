require 'yaml'

class Checkout
  attr_accessor :products, :basket, :promotional_disc, :total

  def initialize
    @products = YAML.load_file('./lib/products.yml')
    # @promotional_disc
    @basket = []
    @total = 0.00
  end

  def item_code
    products.select { |obj| obj[:item][:code] }
  end

  def scan(item_code)
    @basket.push(item_code)
  end

  def cart(product)
    @basket.push(product)
  end

  def total_cost
    cart.each do |code|
       @products.detect { |obj| obj[:product][:code] == code }
      @total_value += [:product][:price]
    end
  end
end
