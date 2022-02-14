# frozen_string_literal: true

class AddColumnExpirationDateToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :expiration_date, :date
  end
end
