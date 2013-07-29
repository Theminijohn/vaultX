class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description, :limit => nil

      t.timestamps
    end
  end
end
