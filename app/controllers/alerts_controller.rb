# frozen_string_literal: true

class AlertsController < ApplicationController
  def create
    alert = Alert.find_or_create_by(alert_params)
    flash[:notice] = 'Você assinou com sucesso.'
    redirect_to_default
  end

  private

  def alert_params
    params.require(:alert).permit(:email)
  end
end