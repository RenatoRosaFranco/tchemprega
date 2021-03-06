# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  acronym    :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer
#
# Indexes
#
#  index_states_on_region_id  (region_id)
#
class State < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Attributes
  self.table_name  = 'states'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many   :jobs, dependent: :destroy
  has_many   :companies, dependent: :nullify
  has_many   :cities, dependent: :destroy
  belongs_to :region
end
