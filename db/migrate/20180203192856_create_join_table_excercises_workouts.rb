class CreateJoinTableExcercisesWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_join_table :excercises, :workouts do |t|
       t.index [:excercise_id, :workout_id]
       t.index [:workout_id, :excercise_id]
    end
  end
end
