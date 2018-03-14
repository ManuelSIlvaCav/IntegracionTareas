json.extract! noticium, :id, :titulo, :bajada, :cuerpo, :created_at, :updated_at
json.url noticium_url(noticium, format: :json)
