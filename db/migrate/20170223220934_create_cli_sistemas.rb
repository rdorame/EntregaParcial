class CreateCliSistemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cli_sistemas do |t|
      t.string :name
      t.string :user
      t.string :password
      t.string :tipo
      t.string :domicilio
      t.string :RFC
      t.string :representante
      t.string :CP
      t.integer :phone
      t.string :email
      t.string :CURP

      t.timestamps
    end
  end
end
