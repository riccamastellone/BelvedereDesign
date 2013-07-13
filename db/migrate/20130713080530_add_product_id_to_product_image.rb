class AddProductIdToProductImage < ActiveRecord::Migration
  def change
    add_column :product_images, :product_id, :integer
  end
end
