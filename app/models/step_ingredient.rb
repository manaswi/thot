class StepIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :step_id, :unit
  has_many :ingredients
end
