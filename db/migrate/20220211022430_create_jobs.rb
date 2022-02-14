# frozen_string_literal: true

class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table   :jobs do |t|
      t.string     :title
      t.integer    :hiring_type
      t.integer    :period
      t.integer    :modality
      t.text       :description
      t.string     :apply_path
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
