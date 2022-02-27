# frozen_string_literal: true

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
class CitySerializer
  include FastJsonapi::ObjectSerializer
  set_type :city

  attributes :name,  :capital, :slug

  has_many :users
  has_many :companies
  has_many :jobs

  belongs_to :state
end
