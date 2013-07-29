class AddPriceToListings < ActiveRecord::Migration
  def change
    add_column :listings, :price, :precision => 8, :scale => 2
  end
end
