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
require 'rails_helper'

RSpec.describe Medium, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
