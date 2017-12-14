json.extract! promo, :id, :title, :imagen, :description, :category_id, :created_at, :updated_at
json.url promo_url(promo, format: :json)
