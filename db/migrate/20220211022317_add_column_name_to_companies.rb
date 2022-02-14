# frozen_string_literal: true

class AddColumnNameToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :name, :string
  end
end
