class Step < ActiveRecord::Base
  attr_accessible :description, :recipe_id
  belongs_to :recipe
  has_many :step_ingredients
  has_many :ingredients, :through => :step_ingredients
end
