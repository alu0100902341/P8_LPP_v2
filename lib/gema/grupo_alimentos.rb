require "./lib/gema/alimento"

class Grupo_alimento < Alimento



	def initialize(nombre_grupo, datos_alimento)


		@nombre_gp = nombre_grupo

		super(datos_alimento[0], datos_alimento[1], datos_alimento[2], datos_alimento[3])

	end

	def to_s

		"Grupo: #{@nombre_gp}"
		super

	end


end
