# + name (string)
# + assigned_age_group_id (int)
# + label (boolean)
# + location (string)
# + cleaned (boolean)
# + checked_out (boolean)
# + 
#
# + belongs_to assigned_age_groups
# + has_many toys
# + has_many_and_belongs_to toys
# + has_many_and_belongs_to skills


class CreateBoxTable < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
			t.string	:name
			t.integer	:assigned_age_group_id
			t.boolean	:label
			t.string	:location
			t.boolean	:cleaned
			t.boolean	:checked_out
    end
  end
end

