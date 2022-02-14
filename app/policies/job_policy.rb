# frozen_string_literal: true

class JobPolicy < ApplicationPolicy
	attr_reader :user, :record

	def initialize(user, record)
		@user = user
		@record = record
	end

	def edit?
		can_access?
	end
end