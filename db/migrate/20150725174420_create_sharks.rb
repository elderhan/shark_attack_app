class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :name
      t.string :shark_species
      t.integer :weight
      t.integer :age
      t.string :description

      t.timestamps null: false
    end
  end
end
