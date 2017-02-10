class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :directions
      t.integer :prep_time

      t.timestamps
    end
  end
end
