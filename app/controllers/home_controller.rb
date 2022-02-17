# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @q         = Job.ransack(params[:q])
    @jobs      = Job.order(created_at: :desc).limit(4)
    @companies = Company.order(created_at: :desc).limit(3) 
  end
end