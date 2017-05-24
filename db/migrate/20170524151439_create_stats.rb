class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :attack
      t.integer :health
      t.integer :armor
      t.integer :speed
      t.integer :hero_id

      t.timestamps null: false
    end
  end
end
