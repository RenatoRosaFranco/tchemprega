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
require 'rails_helper'

RSpec.describe Partner, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
