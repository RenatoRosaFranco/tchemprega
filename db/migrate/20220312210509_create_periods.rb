# frozen_string_literal: true

class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
