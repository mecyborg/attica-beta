json.array!(@catgs) do |catg|
  json.extract! catg, :id, :name, :nop
  json.url catg_url(catg, format: :json)
end
