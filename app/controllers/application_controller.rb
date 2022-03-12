# frozen_string_literal: true

require "application_responder"

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :switch_locale

  self.responder = ApplicationResponder
  respond_to :html

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  protected

  def default_url_options
    { locale: I18n.locale }
  end

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

  private

  def redirect_to_default
    redirect_to root_path
  end
end
