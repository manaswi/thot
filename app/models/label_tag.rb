class LabelTag < ActiveRecord::Base
  attr_accessible :label_id, :recipe_id
  belongs_to :recipe, :class_name => "Recipe", :foreign_key => "recipe_id"  
  belongs_to :label, :class_name => "Label", :foreign_key => "label_id"
end
