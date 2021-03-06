# frozen_string_literal: true

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
class StateSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :acronym, :slug

  has_many :jobs
  has_many :cities
  has_many :users
  has_many :companies

  belongs_to :region
end
