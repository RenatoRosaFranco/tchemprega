# frozen_string_literal: true

class AddRelationshipColumnsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :modality, foreign_key: true
    add_reference :jobs, :hiring_type, foreign_key: true
    add_reference :jobs, :period, foreign_key: true
  end
end
