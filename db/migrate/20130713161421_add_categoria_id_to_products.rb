class AddCategoriaIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :categoria_id, :integer
  end
end
