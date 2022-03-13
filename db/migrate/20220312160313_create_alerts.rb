# frozen_string_literal: true

class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string   :email

      t.timestamps
    end
  end
end
