class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :faction
      t.string :role
      t.integer :stats_id
      t.integer :skills

      t.timestamps null: false
    end
  end
end
