class CreateGarbageCans < ActiveRecord::Migration
  def change
    create_table :garbage_cans do |t|
      t.string :name

      t.timestamps
    end
  end
end
