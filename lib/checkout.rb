require 'yaml'

class Checkout
  attr_accessor :products, :basket, :promotional_disc, :total

  def initialize
    @products=product
    # @promotional_disc
    @total=total
  end

  def scan
    @products.detect
    @basket << 

  def total
    total = @basket.inject(0) { |sum, item| sum + item[:price] }
    end
  end

  def product
    YAML.load_file('./lib/products.yml')
  end
end
