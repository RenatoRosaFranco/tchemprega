# == Schema Information
#
# Table name: occupation_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OccupationArea < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: [:slugged]

  # Attributes
	self.table_name  = 'occupation_areas'
	self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :jobs,  dependent: :destroy

  # Validation
  # @implemented
  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }
end
