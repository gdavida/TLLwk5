# + name (string)
# + assigned_age_group_id (int)
# + label (boolean)
# + location (string)
# + cleaned (boolean)
# + checked_out (boolean)
# + 
#


require_relative  "../test_helper"

class BoxTest < Minitest::Test
  
  def test_box_model_is_valid_with_all_info
    b = Box.new(name: "A1", assigned_age_group_id: 1, label: false, location:"Main", cleaned: true, checked_out: false)
    assert(b.valid?, "should be valid with all attributes present")
  end

  def test_box_model_is_invalid_without_name
    b = Box.new(name: "A1",
                label: false,
                location:"Main",
                cleaned: true,
                checked_out: false)
    b.name = ""
    refute(b.valid?, "should be invalid without a present name")
  end
  
end