class Alimento

attr_accessor :nombre, :proteinas, :glucidos, :lipidos, :kcal

  def initialize(nombre, prot, glu, lip)	

	@nombre = nombre
	@proteinas = prot
	@glucidos = glu	
	@lipidos = lip
	@kcal = 0
  end

end
