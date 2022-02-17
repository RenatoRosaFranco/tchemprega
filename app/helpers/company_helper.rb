# frozen_string_literal: true

module CompanyHelper
	def filled?(field)
		(field.blank?) ? 'Não informado' : field
	end
end