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
class State < ApplicationRecord
  self.table_name  = 'states'
  self.primary_key = 'id'

  has_many   :companies, dependent: :nullify
  has_many   :cities, dependent: :destroy
  belongs_to :region
end
