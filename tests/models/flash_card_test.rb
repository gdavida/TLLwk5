require_relative  "../test_helper"

class FlashCardTest < Minitest::Test
  
  def test_valid_at_creation
    f = FlashCard.new(question: "This is a question?", answer: "This is an answer.")
    assert(f.valid?, "should be valid with a question and an answer")
  end
end
