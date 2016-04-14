
class CreateJoinSkillsToysTable < ActiveRecord::Migration
  def change
  	create_join_table :skills, :toys
  end
end