# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  description :text
#  recipe_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Step do
  pending "add some examples to (or delete) #{__FILE__}"
end
