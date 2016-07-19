json.array!(@companies) do |company|
  json.extract! company, :id, :name, :introduction
  json.url company_url(company, format: :json)
end
