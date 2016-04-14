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
# + has_and_belongs_to_many toys


class Box < ActiveRecord::Base

	has_and_belongs_to_many :assigned_age_groups
	has_and_belongs_to_many :skills
	has_and_belongs_to_many :toys


	validates :name, presence:true
	# validates :label
	validates :location, presence:true
	# validates :cleaned
	# validates :checked_out

	
end