class AddPositionToCandidate < ActiveRecord::Migration
  def change
    add_reference :candidates, :position, index: true
    add_foreign_key :candidates, :positions
  end
end
