require_relative  "../test_helper"

class AssignedAgeGroupTest < Minitest::Test
  
  def test_invalid_without_question
    a = AssignedAgeGroup.new(age: "0-3 months")
    assert(a.valid?, "should be valid with a present age entered")

  end
  
  # def test_invalid_without_answer
  #   f = FlashCard.new(question: "This is a question?", answer: "This is an answer.")
  #   assert(f.valid?, "should be valid with a question and an answer")

  #   f.answer = nil
  #   refute(f.valid?, "should be invalid without an answer")
  # end


end