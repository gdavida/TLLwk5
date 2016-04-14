
class CreateJoinAssignedAgeGroupsBoxesTable < ActiveRecord::Migration
  def change
  	create_join_table :assigned_age_groups, :boxes
  end
end