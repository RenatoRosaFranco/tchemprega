# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

	include BRPopulate

	self.table_name  = 'regions'
	self.primary_key = 'id'

  # Relationships
  # @implemented
	has_many :states, dependent: :destroy

	def self.populate
		BRPopulate.populate
	end
end
