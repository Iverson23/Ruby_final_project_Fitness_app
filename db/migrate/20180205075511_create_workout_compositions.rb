class CreateWorkoutCompositions < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_compositions do |t|
      t.belongs_to :workout, index: true
      t.belongs_to :excercise, index: true
      t.integer :sets
      t.integer :reps
      t.string :group

      t.timestamps
    end
  end
end