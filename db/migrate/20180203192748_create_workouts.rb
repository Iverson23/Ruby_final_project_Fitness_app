class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :workout_type
      t.integer :rest

      t.timestamps
    end
  end
end
