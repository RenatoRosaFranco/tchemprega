# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  apply_path         :string
#  description        :text
#  expiration_date    :date
#  hiring_type        :integer
#  location           :string
#  modality           :integer
#  period             :integer
#  slug               :string
#  status             :integer
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  company_id         :integer
#  occupation_area_id :integer
#  state_id           :integer
#
# Indexes
#
#  index_jobs_on_city_id             (city_id)
#  index_jobs_on_company_id          (company_id)
#  index_jobs_on_occupation_area_id  (occupation_area_id)
#  index_jobs_on_state_id            (state_id)
#
class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
