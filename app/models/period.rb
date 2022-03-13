# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Period < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Attributes
  self.table_name  = 'periods'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :jobs, dependent: :destroy

  # Validation
  # @implemented
  validates :name,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }
end
