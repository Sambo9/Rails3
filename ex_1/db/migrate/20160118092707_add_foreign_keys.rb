class AddForeignKeys < ActiveRecord::Migration
  def change
    add_column :users, :product_id, :integer
    add_column :products, :user_id, :integer
    add_foreign_key :users, :products
    add_foreign_key :products, :users
  end
end
