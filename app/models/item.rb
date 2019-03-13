class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  delegate :group, :to => :user, :allow_nil => true
end
