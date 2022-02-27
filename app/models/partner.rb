# frozen_string_literal: true

# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  logo       :string
#  name       :string
#  slug       :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Partner < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name = 'partners'
  self.primary    = 'id'

  # FileUpload
  # @implemented
  has_one_attached :logo

  # Validations
  # @implemented
  validates :name,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maxium: 30}
end
