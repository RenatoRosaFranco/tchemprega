# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string   :logo
      t.string   :name
      t.integer  :status
      t.string   :slug

      t.timestamps
    end
  end
end
