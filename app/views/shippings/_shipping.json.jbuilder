json.extract! shipping, :id, :name, :price, :created_at, :updated_at
json.url shipping_url(shipping, format: :json)
