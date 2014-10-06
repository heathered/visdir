class AddCardPicToListings < ActiveRecord::Migration
  def change
    add_column :listings, :card_pic, :string
  end
end
