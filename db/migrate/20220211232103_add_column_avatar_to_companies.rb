# frozen_string_literal: true

class AddColumnAvatarToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :avatar, :string
  end
end
