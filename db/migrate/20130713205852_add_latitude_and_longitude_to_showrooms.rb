class AddLatitudeAndLongitudeToShowrooms < ActiveRecord::Migration
  def change
    add_column :showrooms, :latitude, :float
    add_column :showrooms, :longitude, :float
  end
end
