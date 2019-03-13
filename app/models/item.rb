class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :group, through: :user
end
