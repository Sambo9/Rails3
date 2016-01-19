class CreateLabelings < ActiveRecord::Migration
  def change
    create_table :labelings do |t|
      t.integer :label_id, null: false
      t.string :labelable_type, null: false
      t.integer :labelable_id, null: false

      t.timestamps null: false
    end
  end
end
