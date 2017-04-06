json.extract! order, :id, :shipping_id, :status.name, :user.email, :created_at, :updated_at
json.url order_url(order, format: :json)
