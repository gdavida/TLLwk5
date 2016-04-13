require_relative  "../test_helper"

class FlashCardTest < Minitest::Test
  
  def test_invalid_without_question
    f = FlashCard.new(question: "This is a question?", answer: "This is an answer.")
    assert(f.valid?, "should be valid with a question and an answer")

    f.question = nil
    refute(f.valid?, "should be invalid without a question")
  end
  
  def test_invalid_without_answer
    f = FlashCard.new(question: "This is a question?", answer: "This is an answer.")
    assert(f.valid?, "should be valid with a question and an answer")

    f.answer = nil
    refute(f.valid?, "should be invalid without an answer")
  end


end
