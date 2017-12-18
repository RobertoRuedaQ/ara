class AddPriceToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :promos, :price, :integer
  end
end
