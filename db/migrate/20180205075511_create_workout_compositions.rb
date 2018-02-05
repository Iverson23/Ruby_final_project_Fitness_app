class CreateWorkoutCompositions < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_compositions do |t|
      t.belongs_to :workout, index: true
      t.belongs_to :excercise, index: true
      t.integer :sets
      t.integer :reps
      t.timestamps
    end
  end
end
create_table :appointments do |t|
  t.belongs_to :physician, index: true
  t.belongs_to :patient, index: true
  t.datetime :appointment_date
  t.timestamps
end