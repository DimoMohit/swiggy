json.extract! item, :id, :name, :price, :order_id, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
