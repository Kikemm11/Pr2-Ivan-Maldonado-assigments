json.extract! client, :id, :name, :legal_entity, :doc_number, :telephone, :company_id, :created_at, :updated_at
json.url client_url(client, format: :json)
