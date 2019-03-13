class Group < ActiveRecord::Base
  has_many :orders
  has_many :users
  has_many :items, through: :orders
end
