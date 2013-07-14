class AddFeaturedToProduct < ActiveRecord::Migration
  def change
    add_column :products, :featured, :boolean
  end
end
