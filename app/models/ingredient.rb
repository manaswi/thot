class Ingredient < ActiveRecord::Base
  attr_accessible :name
  has_many :step_ingredients
end
