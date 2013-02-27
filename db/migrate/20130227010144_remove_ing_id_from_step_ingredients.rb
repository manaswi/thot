class RemoveIngIdFromStepIngredients < ActiveRecord::Migration
  def change
    remove_column :step_ingredients, :ingredient_id
  end
end
