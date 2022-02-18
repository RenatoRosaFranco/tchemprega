# frozen_string_literal: true

require "application_responder"

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  self.responder = ApplicationResponder
  respond_to :html

  protected

  def serialize(serializer_class, object)
    serializer_class.new(object).serialized_json
  rescue StandardError => e
    raise StandardError, e
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :name, :document, :state_id, :city_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :avatar, :name, :document, :state_id, :city_id, :phone, :about
    ])
  end
end
