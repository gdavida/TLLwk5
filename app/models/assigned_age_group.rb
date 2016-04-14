# + age

class AssignedAgeGroup < ActiveRecord::Base
	has_and_belongs_to_many :boxes
	has_and_belongs_to_many :skills

	validates	:age, presence: true, uniqueness: true
end