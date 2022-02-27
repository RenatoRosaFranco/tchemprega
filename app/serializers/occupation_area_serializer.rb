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
class OccupationAreaSerializer
  include FastJsonapi::ObjectSerializer
  set_type :occupation_area

  attributes :id, :name, :slug
end