# == Schema Information
#
# Table name: media
#
#  id            :integer          not null, primary key
#  external_link :string
#  logo          :string
#  name          :string
#  slug          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Medium < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name = 'media'
  self.primary_key = 'id'
end
