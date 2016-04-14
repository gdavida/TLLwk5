
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

class CreateToyTable < ActiveRecord::Migration
  def change
    create_table :toys do |t|
			t.string		:name
			t.string		:brand
			t.string		:mfg_website
			t.integer		:quantity_wanted
			t.integer		:quantity_have
			t.string		:upc
			t.string		:mfg_suggested_age_range
			t.integer		:pieces
			t.text			:extended_play_idea
			t.string		:store_purchased_from
			t.string		:purchase_price
			t.string		:country_of_origin
			t.boolean		:batteries_required
			t.integer		:box_id
  	end
  end
end

