# Question - text
# Answer - text
# ?? Category

class FlashCard < ActiveRecord::Base
  validates :question, presence: true
  validates :answer, presence: true
end
