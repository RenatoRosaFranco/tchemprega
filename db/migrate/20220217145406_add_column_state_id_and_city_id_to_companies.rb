# frozen_string_literal: true

class AddColumnStateIdAndCityIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :companies, :state, foreign_key: true
    add_reference :companies, :city, foreign_key: true
  end
end
