class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
