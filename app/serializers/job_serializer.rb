# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id              :integer          not null, primary key
#  apply_path      :string
#  description     :text
#  expiration_date :date
#  hiring_type     :integer
#  location        :string
#  modality        :integer
#  period          :integer
#  slug            :string
#  status          :integer
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :integer
#
# Indexes
#
#  index_jobs_on_company_id  (company_id)
#
class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
