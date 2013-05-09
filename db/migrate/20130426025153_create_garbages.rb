class CreateGarbages < ActiveRecord::Migration
  def change
    create_table :garbages do |t|
      t.string :item
      t.references :thrower
      t.references :garbage_can

      t.timestamps
    end
    add_index :garbages, :thrower_id
    add_index :garbages, :garbage_can_id
  end
end
