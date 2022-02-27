# frozen_string_literal: true

class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string   :avatar
      t.string   :name
      t.string   :occupation
      t.text     :content
      t.string   :slug

      t.timestamps
    end
  end
end
