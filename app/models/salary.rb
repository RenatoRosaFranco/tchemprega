# == Schema Information
#
# Table name: salaries
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Salary < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Attributes
  self.table_name  = 'salaries'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :jobs, dependent: :destroy

  # Validations
  # @implemented
  validates :name,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 2, maximum: 30 }
end
