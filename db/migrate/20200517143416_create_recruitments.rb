class CreateRecruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitments do |t|
      t.integer "owner_level"
      t.integer "area", default: 0, null: false
      t.integer "game_model", default: 0, null: false
      t.string "secret_word"
      t.integer "lap_count"

      t.timestamps
    end
  end
end
