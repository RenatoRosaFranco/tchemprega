# frozen_string_literal: true

module ApplicationHelper
	def has_avatar?(company)
		(company.avatar.attached?) ? company.avatar : 'https://res.cloudinary.com/portal-fronteiri-o/image/upload/v1644810317/pfjobs-production/default_q5srie.jpg'
	end
end
