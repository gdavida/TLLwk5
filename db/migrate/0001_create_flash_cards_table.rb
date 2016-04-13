class CreateFlashCardsTable < ActiveRecord::Migration
  def change
    create_table :flash_cards do |t|
      t.text :question
      t.text :answer
    end
  end
end
