class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :integer
    rename_column :products, :premiumprice, :integer
  end
end
