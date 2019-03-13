class Order < ActiveRecord::Base
  belongs_to :group
  has_many :items
end
# Order > title | hotel_id | group_id
# Item > is_shareable | shared_with[] | total_sharing_allowed
# Item > sharing_type
