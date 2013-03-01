class Label < ActiveRecord::Base
  attr_accessible :name
  has_many :label_tags
  has_many :recipes, :through => :label_tags
end
