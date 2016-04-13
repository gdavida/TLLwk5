class CreateAssignedAgeGroupTable < ActiveRecord::Migration
  def change
    create_table :assigned_age_groups do |t|
      t.string :age
    end
  end
end