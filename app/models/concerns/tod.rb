class Tod < ApplicationRecord
	validates :nombre, presence: true
	validates :descripcion, presence: true
end