class CreateArmies < ActiveRecord::Migration[5.0]
  def change
    create_table :armies do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
