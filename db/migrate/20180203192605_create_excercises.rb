class CreateExcercises < ActiveRecord::Migration[5.1]
  def change
    create_table :excercises do |t|
      t.string :muscle_group, null: false
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
