require "./lib/gema/alimento"

class Grupo_alimento < Alimento
include Comparable
attr_reader :nombre_gp


	def initialize(nombre_grupo, datos_alimento)


		@nombre_gp = nombre_grupo

		super(datos_alimento[0], datos_alimento[1], datos_alimento[2], datos_alimento[3])

	end

	def to_s

		"Grupo: #{@nombre_gp}"
		super

	end

	def <=>(other) #1 if self>other; 0 if self==other; -1 if self<other

		comparison = @nombre_gp <=> other.nombre_gp
		puts "Nombre GP :  #{@nombre_gp} == #{other.nombre_gp}"
		if comparison == 0
			comparison = @nombre <=> other.nombre
			puts "Nombre GP :  #{@nombre} == #{other.nombre}"
			if comparison == 0
				comparison = @kcal <=> other.kcal
				puts "Nombre GP :  #{@kcal} == #{other.kcal}"
			end
		end

		return comparison

	end


end
