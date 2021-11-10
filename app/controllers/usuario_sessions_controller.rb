class UsuarioSessionsController < ApplicationController
	def new
		@usuario = Usuario.new
	end

	def rol
		
	end

	def create
		if @usuario = login(params[:email], params[:password])
			redirect_back_or_to(oferta_path, message:"Login exitoso")
		else
			flash.now[:alert] = "Algo salio mal en el Login"
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(:root, message: "Logged out")
	end
end