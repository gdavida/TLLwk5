# + name (string)
# + description (text)
#
# + toy_id (int) hmabt
# + box_ids (int) hmabt


class Skill < ActiveRecord::Base
	has_and_belongs_to_many :boxes
	has_and_belongs_to_many :toys

	validates :name, presence: true, uniqueness: true
	validates :description, presence: true, uniqueness: true
end