class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :logo
      t.string :name
      t.string :external_link
      t.string :slug

      t.timestamps
    end
  end
end
