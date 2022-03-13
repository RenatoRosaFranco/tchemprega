# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  capital    :boolean
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :integer
#
# Indexes
#
#  index_cities_on_state_id  (state_id)
#
class City < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Attributes
  self.table_name  = 'cities'
  self.primary_key = 'id'

  # Relationships
  # @implemented
  has_many :jobs, dependent: :destroy
  has_many :companies, dependent: :destroy
  has_many :users, dependent: :destroy
  belongs_to :state

  # .available_cities
  def self.available_cities
    where(name: 
      [
        'São Borja', 
        'Itaqui', 
        'Uruguaiana', 
        'Santo Ângelo', 
        'São Luiz Gonzaga', 
        'Santiago', 
        'Santa Maria',
        'Jaguari',
        'Garruchos',
        'Maçambara'
      ], 
      state_id: 23)
      .order(:name)
  end
end
