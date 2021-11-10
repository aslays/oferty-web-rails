class Usuario < ActiveRecord::Base

	belongs_to :ciudads
	
	attr_accessible :email, :crypted_password, :salt, :password, :id, :rol, :ciudad_id
	authenticates_with_sorcery!
	validates_confirmation_of :password, message: "Ambos campos deben coincidir", if: :password_confirmation

end
