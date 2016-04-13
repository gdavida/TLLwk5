# + name (string)
# + description (text)
#
# + toy_id (int) hmabt
# + box_ids (int) hmabt



require_relative  "../test_helper"

class SkillTest < Minitest::Test
  
  def test_name_present_is_valid
  	s = Skill.new(name: "", description: "This is the child's ability to learn and solve problems. For example, this includes a two-month-old baby learning to explore the environment with hands or eyes or a five-year-old learning how to do simple math problems.")
  	s.name = "Cognitive Development"
  	assert(s.valid?, "should be valid with a present name")
  end
  
  def test_name_missing_is_invalid
  	s = Skill.new(name: "Cognitive Development", description: "This is the child's ability to learn and solve problems. For example, this includes a two-month-old baby learning to explore the environment with hands or eyes or a five-year-old learning how to do simple math problems.")
  	s.name = ""
  	refute(s.valid?, "should be invalid without a name")
  end
  

end