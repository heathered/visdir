class RemoveCategoryFromListings < ActiveRecord::Migration
  def up
    remove_column :listings, :category
  end

  def down
    add_column :listings, :category, :string
  end
end
