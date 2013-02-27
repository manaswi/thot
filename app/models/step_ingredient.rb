# == Schema Information
#
# Table name: step_ingredients
#
#  id         :integer          not null, primary key
#  quantity   :decimal(6, 2)
#  unit       :string(255)
#  step_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ingredient :string(255)
#

class StepIngredient < ActiveRecord::Base
  attr_accessible :quantity, :step_id, :unit, :ingredient #s_attributes
  belongs_to :step, :class_name => "Step", :foreign_key => "step_id"
  #has_and_belongs_to_many :ingredients
  #accepts_nested_attributes_for :ingredients
end
