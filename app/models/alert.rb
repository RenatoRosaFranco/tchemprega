# == Schema Information
#
# Table name: alerts
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Alert < ApplicationRecord
  self.table_name  = 'alerts'
  self.primary_key = 'id'

  validates :email,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximium: 245 }
end
