class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.string :event_type
      t.datetime :finishes_at
      t.string :value

      t.timestamps
    end
  end
end
