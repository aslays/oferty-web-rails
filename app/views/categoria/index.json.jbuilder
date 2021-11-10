json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :categoria
  json.url categorium_url(categorium, format: :json)
end
