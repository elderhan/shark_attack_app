class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.string :victim_species
      t.string :location
      t.string :description
      t.boolean :fatal
      t.references :shark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
