# frozen_string_literal: true

class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
