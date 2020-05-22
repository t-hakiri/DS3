class CreatePopularAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :popular_areas do |t|

      t.timestamps
    end
  end
end
