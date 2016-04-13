# + age

class AssignedAgeGroup < ActiveRecord::Base
	has_many :boxes

	validates	:age, presence: true, uniqueness: true
end