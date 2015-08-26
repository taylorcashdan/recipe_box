class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.text :ingredients
      t.text :steps
      t.integer :prep_time
      t.integer :cook_time

      t.timestamps null: false
    end
  end
end
