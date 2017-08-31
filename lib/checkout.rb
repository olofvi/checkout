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

  def cart
    @basket.push(product)

  def price_objects
    product.select { |obj| obj[:item][:price] }
  end

  def total
      iterate_scan = @basket.group_by(&:itself).map { |k,v| [k, v.count] }.to_h[1]
    end
end
end
