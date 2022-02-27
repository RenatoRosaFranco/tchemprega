# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  deleted_at             :datetime
#  document               :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'users'
  self.primary_key = 'id'

  # Soft Delete
  # @implemented
  acts_as_paranoid column: :deleted_at

  # FileUpload
  # @implemented
  has_one_attached :avatar

  # Validatons
  # @implemented
  validates :document,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 2, maximum: 30 },
            format: { 
              with: /[0-9]{3}.?[0-9]{3}.?[0-9]{3}-?[0-9]{2}$/,
              multiline: true
            }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # Devise
  # @implemented
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
