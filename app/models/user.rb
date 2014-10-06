class User < ActiveRecord::Base
  attr_accessible :email, :name, :url, :twitter, :pro, :password, :password_confirmation
  has_many :listings
  has_many :categories, :through => :listings
  has_many :locations, :through => :listings
  accepts_nested_attributes_for :listings, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }
  
  
  has_secure_password 
  validates :email, uniqueness: true
end
