class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbs
      t.integer :fats
      t.integer :prep_time
      t.text :ingredients
      t.text :description

      t.timestamps
    end
  end
end
