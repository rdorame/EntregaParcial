class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :tipoPersona
      t.string :domicilio
      t.string :rfc
      t.integer :cp
      t.integer :phone, :limit => 8
      t.string :email

      t.timestamps
    end
  end
end
