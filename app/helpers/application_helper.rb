# frozen_string_literal: true

module ApplicationHelper
	def has_avatar?(company)
		(company.avatar.attached?) ? company.avatar : asset_path('default.jpeg')
	end
end
