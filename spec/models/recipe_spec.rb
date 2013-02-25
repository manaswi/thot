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

require File.dirname(__FILE__) + '/../spec_helper'

describe Recipe do
  it "should be valid" do
    Recipe.new.should be_valid
  end
end
