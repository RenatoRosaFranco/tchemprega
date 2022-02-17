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
class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  enum modality: ['Presencial', 'Remoto']
  enum hiring_type: ['CLT', 'PJ', 'Free-Lance']
  enum period: ['Integral', 'Parcial']
  enum status: ['Expirada', 'Ativa']

  self.table_name  = 'jobs'
  self.primary_key = 'id'

  scope :news,      -> { where('created_at >= ?', Date.today) }
  scope :available, -> { where('expiration_date > ?', Date.today) }
  scope :expirated, -> { where('expiration_date < ?', Date.today) }

  scope :daily,     -> { time_lapse(:day) }
  scope :weekly,    -> { time_lapse(:week) }
  scope :monthly,   -> { time_lapse(:month) }
  scope :yearly,    -> { time_lapse(:year) }

  before_create :set_expiration_date

  delegate :name, to: :company, prefix: :company

  belongs_to :company

  def set_expiration_date(date = Date.today + 15.days)
    self.expiration_date = date
    self.status = 'Ativa'
  end

  def next?
    Job.where('id > ?', id).first || false
  end

  def previous?
    Job.where('id < ?', id).first || false
  end

  # Class Methods
  # @implemented
  class << self
    def time_lapse(portion)
      date       = Date.today
      start_date = date.send(:"beginning_of_#{portion}")
      end_date   = date.send(:"end_of_#{portion}")

      where(created_at: start_date..end_date)
    end
  end
end
