# frozen_string_literal: true

class AddColumnPhoneToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :phone, :string
  end
end
