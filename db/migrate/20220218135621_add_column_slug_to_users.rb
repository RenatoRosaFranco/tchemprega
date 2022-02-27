# frozen_string_literal: true

class AddColumnSlugToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :slug, :string
  end
end
