
class RemoveBoxIdFromToyTable < ActiveRecord::Migration
  def change
  	remove_column :toys, :box_id, :integer
  end
end