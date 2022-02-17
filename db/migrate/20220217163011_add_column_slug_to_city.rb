# frozen_string_literal: true

class AddColumnSlugToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :slug, :string
  end
end
