class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.integer :id
      t.integer :product_id
      t.string :image

      t.timestamps
    end
  end
end
