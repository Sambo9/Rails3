require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should not save product without user" do
  product = Product.new
  assert product.save, "Saved the product without a user"
end
end
