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
  attr_accessible :title, :description, :uesr_id
  belongs_to :user
  has_many :steps
  has_many :step_ingredients, :through => :steps
end
