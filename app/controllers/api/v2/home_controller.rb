# frozen_string_literal: true

module API
  module V2
    class HomeController < BaseController
      def index
        render json: { message: 'You have arrived.' }
      end
    end
  end
end