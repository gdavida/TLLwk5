
  # validates :name, presence: true
  # validates :brand, presence: true
  # validates :mfg_website, presence: true
  # validates :quantity_wanted, presence: true
  # validates :quantity_have, presence: true
  # validates :upc, presence: true, unique: true
  # validates :mfg_suggested_age_range, presence: true
  # validates :pieces, presence: true
  # validates :extended_play_idea
  # validates :store_purchased_from
  # validates :purchase_price, presence: true
  # validates :country_of_origin, presence: true
  # validates :batteries_required

  # belongs_to 							:box
  # has_and_belongs_to_many :skill
  # has_and_belongs_to_many :assigned_age_group

require_relative  "../test_helper"

class BoxTest < Minitest::Test
  
  def test_toy_model_is_valid_with_all_info
    t = Toy.new(name:"Flexi-loops", 
           brand:"Oball",
           mfg_website:"http://www.kidsii.com/brands/oball",
           quantity_wanted:2,
           quantity_have:1,
           upc: "07445181511",
           mfg_suggested_age_range: "0+",
           pieces: 24,
           extended_play_idea: "Here's a fun idea...",
           store_purchased_from: "Target",
           purchase_price: "599",
           country_of_origin: "China")
    assert(t.valid?, "should be valid with all attributes present")
  end

end