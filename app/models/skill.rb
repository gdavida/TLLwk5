# + name (string)
# + description (text)
#
# + toy_id (int) hmabt
# + box_ids (int) hmabt


class Skill < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true, uniqueness: true
end