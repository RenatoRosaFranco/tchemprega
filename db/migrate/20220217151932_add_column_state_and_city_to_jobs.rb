# frozen_string_literal: true

class AddColumnStateAndCityToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :state, foreign_key: true
    add_reference :jobs, :city, foreign_key: true
  end
end
