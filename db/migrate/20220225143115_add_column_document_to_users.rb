# frozen_string_literal: true

class AddColumnDocumentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :document, :string
  end
end
