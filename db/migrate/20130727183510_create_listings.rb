class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description, :text, :limit => nil

      t.timestamps
    end
  end
end
