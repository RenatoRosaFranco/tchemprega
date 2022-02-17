# frozen_string_literal: true

class AddColumnSlugToState < ActiveRecord::Migration[5.2]
  def change
    add_column :states, :slug, :string
  end
end
