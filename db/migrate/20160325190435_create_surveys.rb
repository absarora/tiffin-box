class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :diet
      t.string :cuisine
      t.string :lunch_time
      t.string :lunch_meal
      t.string :dinner_time
      t.string :order_method
      t.string :device
      t.string :cost
      t.string :cook_time
      t.string :delivery_time

      t.timestamps null: false
    end
  end
end
