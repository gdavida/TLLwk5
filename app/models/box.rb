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


class Box < ActiveRecord::Base

	belongs_to :assigned_age_groups

	validates :name, presence:true
	# validates :label
	validates :location, presence:true
	# validates :cleaned
	# validates :checked_out

	
end