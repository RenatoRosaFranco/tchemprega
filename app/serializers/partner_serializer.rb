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
class PartnerSerializer
  include FastJsonapi::ObjectSerializer
  set_type :partner

  attributes :id, :logo, :name, :status, :slug
end