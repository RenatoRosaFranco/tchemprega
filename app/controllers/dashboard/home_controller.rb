# frozen_string_literal: true

module Dashboard
  class HomeController < ApplicationController
    before_action :authenticate_company!

    def index
    end
  end
end