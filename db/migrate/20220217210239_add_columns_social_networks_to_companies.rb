class AddColumnsSocialNetworksToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :facebook, :string
    add_column :companies, :instagram, :string
    add_column :companies, :twitter, :string
    add_column :companies, :linkedin, :string
  end
end
