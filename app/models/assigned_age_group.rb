# + age

class AssignedAgeGroup < ActiveRecord::Base
	validates	:age, presence: true
end