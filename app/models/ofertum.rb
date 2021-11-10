class Ofertum < ActiveRecord::Base
	
	belongs_to :ciudads

	belongs_to :categoria

	belongs_to :usuarios

	attr_accessible :photo, :titulo, :descripcion, :precio, :forma_pago, :categoria, :extension, :ciudad, :usuario, :categorium_id, :usuario_id, :ciudad_id 
FOTOS = File.join Rails.root, 'public', 'photo_store'
	after_save :guardar_foto

	def photo=(file_data)
		unless file_data.blank?
			@file_data = file_data
			self.extension = file_data.original_filename.split('.').last.downcase
		end	
	end	

	def photo_filename
		File.join FOTOS, "#{id}.#{extension}"
	end	

	def photo_path
		"/photo_store/#{id}.#{extension}"
	end

	def has_photo?
		File.exists? photo_filename
	end

	
	
	def ofertum_params
	
	end
	private


	def guardar_foto
		if @file_data
			FileUtils.mkdir_p FOTOS
			File.open(photo_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
			@file_data = nil
		end
	end	

	
end
