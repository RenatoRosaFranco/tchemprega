# frozen_string_literal: true

module JobHelper
	def owner?(job)
		current_company.eql?(job.company)
	end

	def is_a_link?(object)
		object =~ /^(http|https):/ ? true : false
	end

	def load_job_description
		File.read("#{Rails.root}/templates/jobs/description.md")
	end

	def new_job?(job)
		job.created_at >= Date.today ? true : false
	end

	def expirated_job?(job)
		job.expiration_date < Date.today
	end
end