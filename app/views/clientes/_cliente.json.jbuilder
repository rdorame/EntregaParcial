json.extract! cliente, :id, :name, :tipoPersona, :domicilio, :rfc, :cp, :phone, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
