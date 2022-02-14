# frozen_string_literal: true

class AddColumnDocumentToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :document, :string
  end
end
