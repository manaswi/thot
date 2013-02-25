class CreateStepIngredients < ActiveRecord::Migration
  def change
    create_table :step_ingredients do |t|
      t.decimal :quantity, :precision => 6, :scale => 2
      t.string :unit
      t.integer :step_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
