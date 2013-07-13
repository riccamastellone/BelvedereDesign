class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
