# frozen_string_literal: true

class CreateModalities < ActiveRecord::Migration[5.2]
  def change
    create_table :modalities do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
