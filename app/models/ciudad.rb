class Ciudad < ActiveRecord::Base
	has_many :usuarios

	belongs_to :usuarios

	attr_accessible :ciudad
end
