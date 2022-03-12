# frozen_string_literal: true

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
class MediumSerializer
  include FastJsonapi::ObjectSerializer
  set_type :medium

  attributes :logo, :name, :external_link, :slug
end
