# frozen_string_literal: true

class JobsController < ApplicationController
	before_action :authenticate_company!, except: [:index, :show, :expirated, :search]
	before_action :set_job, only: [:show, :edit, :update, :destroy, :expire, :active]
	before_action :is_job_owner, only: [:edit, :update, :destroy]
	respond_to 		:html

	def index
		@query = Job.ransack(params[:query])
		@jobs  = Job.available
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(5)

		respond_to do |format|
			format.html
			format.json { render json: serialize(JobSerializer, @jobs) }
		end
	end

	def new
		@job = Job.new

		respond_to do |format|
			format.html
			format.json { render json: serialize(JobSerializer, @job) }
		end
	end

	def create
		@job = current_company.jobs.build(job_params)

		respond_to do |format|
			if @job.save
				format.html { redirect_to @job, notice: 'Vaga adicionada com sucesso.' }
				format.json { render json: @job, status: :created, location: @job }
			else
				format.html { render :new }
				format.json { render json: @job.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		respond_to do |format|
			format.html
			format.json { render json: serialize(JobSerializer, @job) }
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @job.update_attributes(job_params)
				format.html { redirect_to @job, notice: 'Vaga de trabalho atualizada com sucesso.' }
				format.json { head :no_content }
			else
				format.html { render :edit }
				format.json { render json: @job.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@job.destroy

		respond_to do |format|
			format.html { redirect_to jobs_url }
			format.json { head :no_content }
		end
	end

	def expirated
		@query = Job.ransack(params[:query])
		@jobs  = Job.expirated
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(20)

		render :index
	end

	def expire
		respond_to do |format|
			if @job.update_attributes(expiration_date: Date.today - 1.day, status: 'Expirada')
				format.html { redirect_to @job, notice: 'Vaga expirada com sucesso.' }
				format.json { head :no_content }
			else
				format.html { render :edit }
				format.json { render json: @job.errors, status: :unprocessable_entity }
			end
		end
	end

	def company
		@query = Job.ransack(params[:query])
		@jobs  = current_company.jobs.available
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(20)

		render :index
	end

	def active
		respond_to do |format|
			if @job.update_attributes(expiration_date: Date.today + 15.days, status: 'Ativa')
				format.html { redirect_to @job, notice: 'Vaga renovada com sucesso.' }
				format.json { head :no_content }
			else
				format.html { render :edit }
				format.json { render json: @job.errors, status: :unprocessable_entity }
			end
		end
	end

	def daily
		@query = Job.ransack(params[:query])
		@jobs  = Job.available.daily
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(20)

		render :index
	end

	def weekly
		@query = Job.ransack(params[:query])
		@jobs  = Job.available.weekly
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(20)

		render :index
	end

	def monthly
		@query = Job.ransack(params[:query])
		@jobs  = Job.available.monthly
							 .order(created_at: :desc)
							 .page(params[:page])
							 .per(20)

		render :index
	end

	def yearly
		@query = Job.ransack(params[:query])
		@jobs  = Job.available.yearly
								.order(created_at: :desc)
								.page(params[:page])
								.per(20)

		render :index 
	end

	def search
		@query = Job.ransack(params[:query])
		@jobs  = @query.result(distinct: true)
              .includes(:state, :city)
							.order(created_at: :desc)
							.page(params[:page])
							.per(20)

		render :index
	end

	private

	def is_job_owner
		if @job.company != current_company
			flash[:notice] = 'Voc?? n??o tem permiss??o para editar esta vaga.'
			redirect_to jobs_path
		end
	end

	def set_job
		@job = Job.friendly.find(params[:id])
	end

	def job_params
		params.require(:job)
					.permit(:title, :hiring_type, :modality, :period,
									:description, :occupation_area_id, :location, :apply_path,
                  :hiring_type_id, :modality_id, :period_id, :state_id, 
                  :salary_id, :deficiency_id, :city_id)
	end
end
