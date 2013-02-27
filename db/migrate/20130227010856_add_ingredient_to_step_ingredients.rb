class AddIngredientToStepIngredients < ActiveRecord::Migration
  def change
    add_column :step_ingredients, :ingredient, :string
  end
end
