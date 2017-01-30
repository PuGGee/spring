class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.references :user, index: true


      t.integer :food, null: false, default: 0
      t.integer :wood, null: false, default: 0
      t.integer :iron, null: false, default: 0
      t.integer :gold, null: false, default: 0
      t.timestamps
    end
  end
end
