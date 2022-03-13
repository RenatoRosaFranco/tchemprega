# frozen_string_literal: true

class AddColumnSalaryIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :salary, foreign_key: true
  end
end
