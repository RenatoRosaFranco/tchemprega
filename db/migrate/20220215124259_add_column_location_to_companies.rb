# frozen_string_literal: true

class AddColumnLocationToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :location, :string
  end
end
