require "./lib/lista"

class Grupo_alimentos < Lista

	def initialize(nombres_grupos, lista_alimentos)

		@nombres_alimentos = Lista.new(nombres_grupos)
		@alimentos = Lista.new(lista_alimentos)

	end


end
