class CreateGetInspireds < ActiveRecord::Migration
  def change
    create_table :get_inspireds do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
