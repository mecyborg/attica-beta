json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :discount, :description, :instock
  json.url product_url(product, format: :json)
end
