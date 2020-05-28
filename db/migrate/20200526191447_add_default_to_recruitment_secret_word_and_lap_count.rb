class AddDefaultToRecruitmentSecretWordAndLapCount < ActiveRecord::Migration[5.2]
  def up
    change_column :recruitments, :lap_count, :integer, default: 1
  end
  def down
    change_column :recruitments, :lap_count, :integer
  end
end
