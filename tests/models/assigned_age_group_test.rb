require_relative  "../test_helper"

class AssignedAgeGroupTest < Minitest::Test
  
  def test_valid_with_age
    a = AssignedAgeGroup.new(age: "0-3 months")
    assert(a.valid?, "should be valid with a present age entered")
  end
  
  def test_invalid_without_age
    a = AssignedAgeGroup.new(age: "")
    refute(a.valid?, "should be invalid without an age")
  end
  


end