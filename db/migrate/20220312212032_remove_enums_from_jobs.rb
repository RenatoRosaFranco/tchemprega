# frozen_string_literal: true

class RemoveEnumsFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :period
    remove_column :jobs, :hiring_type
    remove_column :jobs, :modality
  end
end
