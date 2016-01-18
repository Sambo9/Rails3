require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Associate user to products" do
    @user = User.new
    @product= Product.new
    @user.delete
    assert( @product_id, "products null" )
  end
  # test "should have many products" do
  #   t = User.reflect_on_association(:products)
  #   t.macro.should == :has_many
  # end
end
