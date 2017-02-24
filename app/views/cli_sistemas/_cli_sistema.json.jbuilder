json.extract! cli_sistema, :id, :name, :user, :password, :type, :domicilio, :RFC, :representante, :CP, :phone, :email, :CURP, :created_at, :updated_at
json.url cli_sistema_url(cli_sistema, format: :json)
