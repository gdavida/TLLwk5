
class CreateJoinAssignedAgeGroupsSkillsTable < ActiveRecord::Migration
  def change
  	create_join_table :assigned_age_groups, :skills
  end
end