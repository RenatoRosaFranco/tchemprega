# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  acronym    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer
#
# Indexes
#
#  index_states_on_region_id  (region_id)
#
require 'rails_helper'

RSpec.describe State, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
