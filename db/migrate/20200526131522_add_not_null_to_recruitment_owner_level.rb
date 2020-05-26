class AddNotNullToRecruitmentOwnerLevel < ActiveRecord::Migration[5.2]
  def change
      change_column_null :recruitments, :owner_level, false
  end
end
