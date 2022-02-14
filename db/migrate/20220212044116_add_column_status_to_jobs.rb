# frozen_string_literal: true

class AddColumnStatusToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :status, :integer
  end
end
