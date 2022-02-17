# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id                     :integer          not null, primary key
#  about                  :text
#  avatar                 :string
#  deleted_at             :datetime
#  document               :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  location               :string
#  name                   :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  website                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :integer
#  state_id               :integer
#
# Indexes
#
#  index_companies_on_city_id               (city_id)
#  index_companies_on_deleted_at            (deleted_at)
#  index_companies_on_email                 (email) UNIQUE
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#  index_companies_on_state_id              (state_id)
#
class CompanySerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
