# == Schema Information
#
# Table name: companies
#
#  id                     :integer          not null, primary key
#  about                  :text
#  avatar                 :string
#  deleted_at             :datetime
#  document               :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  facebook               :string
#  instagram              :string
#  linkedin               :string
#  location               :string
#  name                   :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  twitter                :string
#  website                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :integer
#  state_id               :integer
#
# Indexes
#
#  index_companies_on_city_id               (city_id)
#  index_companies_on_deleted_at            (deleted_at)
#  index_companies_on_email                 (email) UNIQUE
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#  index_companies_on_state_id              (state_id)
#
class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]
  
  # Attributes
  self.table_name  = 'companies'
  self.primary_key = 'id'
  
  # Soft Delete
  # @implemented
  acts_as_paranoid column: :deleted_at

  # FileUpload
  # @implemented
  has_one_attached :avatar

  # Validations
  # @implemented
  validates :document,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 2, maximum: 18 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # Relationships
  # @implemented
  has_many :jobs, dependent: :destroy
  belongs_to :state, optional: true
  belongs_to :city,  optional: true

  # Devise
  # @implemented
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
