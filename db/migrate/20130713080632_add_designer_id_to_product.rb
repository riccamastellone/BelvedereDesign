class AddDesignerIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :designer_id, :integer
  end
end
