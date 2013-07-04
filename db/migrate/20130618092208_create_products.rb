class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :title
      t.text :description
      t.integer :designer_id

      t.timestamps
    end
  end
end