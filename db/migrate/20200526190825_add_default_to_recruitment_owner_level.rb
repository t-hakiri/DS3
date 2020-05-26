class AddDefaultToRecruitmentOwnerLevel < ActiveRecord::Migration[5.2]
  def up
    change_column :recruitments, :owner_level, :integer, default: 100, null: false
  end
  def down
    change_column :recruitments, :owner_level, :integer, null: false
  end
end
