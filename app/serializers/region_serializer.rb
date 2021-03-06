# frozen_string_literal: true

# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RegionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :slug

  has_many :states
end
