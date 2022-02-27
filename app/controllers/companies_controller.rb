# frozen_string_literal: true

class CompaniesController < ApplicationController
	before_action :set_company, only: [:show]
	respond_to :html

	def index
		@query = Company.ransack(params[:query])
		@companies = Company.order(name: :asc)
												.page(params[:page])
												.per(21)

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
		@query 		 = Company.ransack(params[:query])
		@companies = @query.result(distinct: true)
								       .order(created_at: :asc)
								       .page(params[:page])
								       .per(21)

		render :index
	end

	private

	def set_company
		@company = Company.friendly.find(params[:id])
	end
end