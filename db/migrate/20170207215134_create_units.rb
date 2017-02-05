class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.references :army, index: true
      t.string :unit_type
      t.integer :quantity

      t.timestamps
    end
  end
end
