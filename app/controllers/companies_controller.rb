# frozen_string_literal: true

class CompaniesController < ApplicationController
	before_action :set_company, only: [:show]
	respond_to :html, :json, :js

	def index
		@q = Company.ransack(params[:q])
		@companies = Company.order(name: :asc)
												.page(params[:page])
												.per(7)

		respond_to do |format|
			format.html
			format.json { render companies: serialize(CompanySerializer, @companies) }
		end
	end

	def show
		@jobs = @company.jobs
										.order(created_at: :desc)
										.available
										.page(params[:page])
										.per(7)

		respond_to do |format|
			format.html
			format.json { render company: serialize(CompanySerializer, @company) }
		end
	end

	def search
		@q 				 = Company.ransack(params[:q])
		@companies = @q.result(distinct: true)
								   .order(created_at: :asc)
								   .page(params[:page])
								   .per(20)

		render :index
	end

	private

	def set_company
		@company = Company.friendly.find(params[:id])
	end
end