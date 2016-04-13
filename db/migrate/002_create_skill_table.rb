# + name (string)
# + description (text)
#
# + toy_id (int) hmabt
# + box_ids (int) hmabt

class CreateSkillTable < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
    end
  end
end

