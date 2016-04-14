
class CreateJoinBoxesSkillsTable < ActiveRecord::Migration
  def change
  	create_join_table :boxes, :skills
  end
end