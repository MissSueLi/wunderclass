class AddInventorynumberToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :inventorynumber, :integer
  end
end
