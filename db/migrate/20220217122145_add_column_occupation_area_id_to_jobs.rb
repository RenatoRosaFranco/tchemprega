# frozen_string_literal: true

class AddColumnOccupationAreaIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :occupation_area, foreign_key: true
  end
end
