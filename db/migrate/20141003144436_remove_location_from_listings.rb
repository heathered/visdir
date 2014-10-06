class RemoveLocationFromListings < ActiveRecord::Migration
  def up
    remove_column :listings, :location
  end

  def down
    add_column :listings, :location, :string
  end
end
