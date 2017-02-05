class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.references :user, index: true

      t.string :building_type
      t.integer :quantity, null: false, default: 0
      t.timestamps
    end
  end
end
