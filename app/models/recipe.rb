# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :title, :description, :uesr_id, :steps_attributes
  belongs_to :user
  has_many :steps, :dependent => :destroy
  has_many :step_ingredients, :through => :steps
  accepts_nested_attributes_for :steps,
          :reject_if => lambda { |a| a[:description].blank? },
          :allow_destroy => true
end
