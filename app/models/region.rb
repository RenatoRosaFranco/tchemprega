# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
	include BRPopulate

	self.table_name  = 'regions'
	self.primary_key = 'id'

	has_many :states, dependent: :destroy

	def self.populate
		BRPopulate.populate
	end
end
