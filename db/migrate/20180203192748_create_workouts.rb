class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.string :goal

      t.timestamps
    end
  end
end
