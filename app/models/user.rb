class User < ActiveRecord::Base
	has_many :items
	validates :email, uniqueness: {case_sensitive: false ,message: "Este Correo ya se encuentra registrado"}
	validates.capitalize
	
    def h_name
  	self.name.humanize
	end
end
