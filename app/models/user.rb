class User < ActiveRecord::Base
	has_many :products, dependent: :destroy_all
	validates :email, uniqueness: {case_sensitive: false ,message: "Este Correo ya se encuentra registrado"}
	
    def h_name
  	self.name.humanize
	end
end
