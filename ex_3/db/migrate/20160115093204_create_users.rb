class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
    add_index :users, [:email], :unique => true
    add_column :product_id, :integer
    add_foreign_key :users, :products
  end
end
