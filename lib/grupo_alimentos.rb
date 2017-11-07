require "./lib/lista"

class Grupo_alimentos < Lista

	def initialize(nombres_grupos, lista_alimentos)

		@nombres_alimentos = super(nombres_grupos)
		@alimentos = super(lista_alimentos)

	end


end
