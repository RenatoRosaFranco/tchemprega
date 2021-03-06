# frozen_string_literal: true

class CreateDeficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :deficiencies do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
