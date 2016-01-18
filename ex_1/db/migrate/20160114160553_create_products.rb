class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :null => false
      t.text :description
      t.float :price, :null => false

      t.timestamps null: false
    end
    add_column :user_id, :integer
    add_foreign_key :products, :users
  end
end
