
class CreateJoinBoxesToysTable < ActiveRecord::Migration
  def change
  	create_join_table :boxes, :toys
  end
end