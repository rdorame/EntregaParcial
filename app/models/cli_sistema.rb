class CliSistema < ApplicationRecord
	validates :password, length: {minimum: 6},
				presence: true
	validates :name, presence: true
	validates :user, presence: true
	validates :tipo, presence: true
	validates :domicilio, presence: true
	validates :RFC, presence: true
	validates :representante, presence: true
	validates :CP, presence: true
	validates :phone, presence: true
	validates :email, presence: true
	validates :CURP, presence: true
end
