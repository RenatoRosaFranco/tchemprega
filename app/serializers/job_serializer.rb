# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  apply_path         :string
#  description        :text
#  expiration_date    :date
#  location           :string
#  slug               :string
#  status             :integer
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  company_id         :integer
#  deficiency_id      :integer
#  hiring_type_id     :integer
#  modality_id        :integer
#  occupation_area_id :integer
#  period_id          :integer
#  salary_id          :integer
#  state_id           :integer
#
# Indexes
#
#  index_jobs_on_city_id             (city_id)
#  index_jobs_on_company_id          (company_id)
#  index_jobs_on_deficiency_id       (deficiency_id)
#  index_jobs_on_hiring_type_id      (hiring_type_id)
#  index_jobs_on_modality_id         (modality_id)
#  index_jobs_on_occupation_area_id  (occupation_area_id)
#  index_jobs_on_period_id           (period_id)
#  index_jobs_on_salary_id           (salary_id)
#  index_jobs_on_state_id            (state_id)
#
class JobSerializer
  include FastJsonapi::ObjectSerializer
  set_type :job

  attributes :title, :description, :expiration_date

  belongs_to :company
  belongs_to :occupation_area
  belongs_to :state
  belongs_to :city
end
