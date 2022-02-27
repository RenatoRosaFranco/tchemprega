# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @query = Job.ransack(params[:query])
    @jobs = Job.order(created_at: :desc).limit(4)
    @companies = Company.order(created_at: :desc).limit(3)
  end
end