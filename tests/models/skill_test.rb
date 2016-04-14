# + name (string)
# + description (text)
#
# + toy_id (int) hmabt
# + box_ids (int) hmabt



require_relative  "../test_helper"

class SkillTest < Minitest::Test
  
  def test_name_present_is_valid
  	s = Skill.new(name: "", description: "This is a description")
  	s.name = "Some Skill"
  	assert(s.valid?, "should be valid with a present name")
  end
  
  def test_name_missing_is_invalid
  	s = Skill.new(name: "Some Other Skill", description: "A different description")
  	s.name = ""
  	refute(s.valid?, "should be invalid without a name")
  end
  

end