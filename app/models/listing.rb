class Listing < ActiveRecord::Base
  attr_accessible :budget, :category_id, :desc, :location_id, :name, :card_pic, :remote_card_pic_url, :user_id
  belongs_to :user
  belongs_to :category
  belongs_to :location

  mount_uploader :card_pic, CardPicUploader
  
end
