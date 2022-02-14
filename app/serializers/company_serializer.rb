# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id                     :integer          not null, primary key
#  avatar                 :string
#  document               :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_companies_on_email                 (email) UNIQUE
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#
class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
