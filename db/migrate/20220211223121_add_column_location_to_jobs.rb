# frozen_string_literal: true

class AddColumnLocationToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :location, :string
  end
end
