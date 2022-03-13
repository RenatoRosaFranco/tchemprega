# frozen_string_literal: true

# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  avatar     :string
#  content    :text
#  name       :string
#  occupation :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Testimonial < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Attributes
  self.table_name  = 'testimonials'
  self.primary_key = 'id'

  # FileUpload
  # @implemented
  has_one_attached :avatar
end
