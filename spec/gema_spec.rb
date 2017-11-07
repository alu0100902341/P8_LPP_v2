require "spec_helper"
require "./lib/alimento"
require "./lib/lista"
require "./lib/grupo_alimentos"

RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe Alimento do

	before :each do

		@nutrientes = [ Alimento.new("Huevo frito", 14.1, 0.0, 19.5), Alimento.new("Leche de vaca", 3.3, 4.8, 3.2), Alimento.new("Yogurt", 3.8, 4.9, 3.8), Alimento.new("Cerdo", 21.5, 0.0, 6.3), Alimento.new("Ternera", 21.1, 0.0, 3.1), Alimento.new("Pollo", 20.6, 0.0, 5.6), Alimento.new("Bacalao", 17.7, 0.0, 0.4), Alimento.new("Atún", 21.5, 0.0, 15.5), Alimento.new("Salmón", 19.9, 0.0, 13.6), Alimento.new("Aceite de oliva", 0.0, 0.2, 99.6), Alimento.new("Chocolate", 5.3, 47.0, 30.0), Alimento.new("Azúcar", 0.0, 99.8, 0.0), Alimento.new("Arroz", 6.8, 77.7, 0.6), Alimento.new("Lentejas", 23.5, 52.0, 1.4), Alimento.new("Papas", 2.0, 15.4, 0.1), Alimento.new("Tomate", 1.0, 3.5, 0.2), Alimento.new("Cebolla", 1.3, 5.8, 0.3), Alimento.new("Manzana", 0.3, 12.4, 0.4), Alimento.new("Plátanos", 1.2, 21.4, 0.2) 		
				]	

	end

	it "Método para obtener el nombre del alimento." do
	   expect(@nutrientes[0].nombre).to eq("Huevo frito")
	 end

	it "Método para obtener la proteína de un alimento." do
	   expect(@nutrientes[0].proteinas).to eq(14.1)
	 end

	it "Método para obtener los glúcidos de un alimento." do
	   expect(@nutrientes[0].glucidos).to eq(0.0)
	 end

	it "Método para obtener los lípidos de un alimento." do
	   expect(@nutrientes[0].lipidos).to eq(19.5)
	 end

	it "Método para obtener un alimento formateado." do
	   expect(@nutrientes[0].to_s).to eq("Huevo frito P(14.1) G(0.0) L(19.5)")
	 end

	it "Método para obtener las Kcal de un alimento." do
	   expect(@nutrientes[0].kcal).to eq(231.9)
	 end

  end

  describe Lista do

	before :each do

		@lista = [Nodo.new(0, 1, 5) ,Nodo.new(1, 2, 0), Nodo.new(2, 3, 1), Nodo.new(3, 4, 2), Nodo.new(4, 5, 3), Nodo.new(5, 0, 4) ]
		@lista_dl = Lista.new(@lista)

	end

	it "Debe existir un nodo con su valor." do
	   expect(@lista_dl.array[0].value).to eq(0)
	 end

	it "Debe existir un nodo con su siguiente." do
	   expect(@lista_dl.array[0].next).to eq(1)
	 end

	it "Debe existir un nodo con su previo." do
	   expect(@lista_dl.array[0].prev).to eq(5)
	 end

	it "Debe existir una lista con su cabeza y su cola." do
	   expect(@lista_dl.head.prev).to eq(@lista_dl.tail.value)
	   expect(@lista_dl.tail.next).to eq(@lista_dl.head.value)
	 end

	it "Se puede insertar un elemento en la Lista." do
	   expect(@lista_dl.push_back(Nodo.new(6, @lista_dl.head.value, @lista_dl.tail.value))).to eq(6)
	 end

	it "Se puede extraer el primer elemento de la lista." do
	   expect(@lista_dl.pop_front).to eq(1)
	 end

	it "Se puede extraer el último elemento de la lista." do
	   expect(@lista_dl.pop).to eq(4)
	 end


end


  describe Grupo_alimentos do

	before :each do

		@grupos = [ "Huevos, lácteos y helados", "Carnes y derivados", "Pescados y mariscos", "ALimentos grasos", "Alimentos ricos en carbohidratos", "Verduras y Hortalizas", "Frutas" ]

		@gp1 = Lista.new( [ Alimento.new("Huevo frito", 14.1, 0.0, 19.5), Alimento.new("Leche de vaca", 3.3, 4.8, 3.2), Alimento.new("Yogurt", 3.8, 4.9, 3.8) ] )

		@gp2 = Lista.new( [ Alimento.new("Cerdo", 21.5, 0.0, 6.3), Alimento.new("Ternera", 21.1, 0.0, 3.1), Alimento.new("Pollo", 20.6, 0.0, 5.6) ] )

		@gp3 = Lista.new( [ Alimento.new("Bacalao", 17.7, 0.0, 0.4), Alimento.new("Atún", 21.5, 0.0, 15.5), Alimento.new("Salmón", 19.9, 0.0, 13.6) ] )

		@gp4 = Lista.new( [ Alimento.new("Aceite de oliva", 0.0, 0.2, 99.6), Alimento.new("Mantequilla", 0.7, 0.0, 83.2), Alimento.new("Chocolate", 5.3, 47.0, 30.0) ] )

		@gp5 = Lista.new( [ Alimento.new("Azúcar", 0.0, 99.8, 0.0), Alimento.new("Arroz", 6.8, 77.7, 0.6), Alimento.new("Lentejas", 23.5, 52.0, 1.4), Alimento.new("Papas", 2.0, 15.4, 0.1) ] )

		@gp6 = Lista.new( [ Alimento.new("Manzana", 0.3, 12.4, 0.4), Alimento.new("Plátanos", 1.2, 21.4, 0.2), Alimento.new("Pera", 0.5, 12.7, 0.3) ] )

		@grupos_alimentos = Grupo_alimentos.new( @grupos, [ @gp1, @gp2, @gp3, @gp4, @gp5, @gp6 ])
	end


	it "Comprobar pertenencia a las clases." do
	   expect(@grupos_alimentos.class).to eq(Grupo_alimentos)
	 end

  end

end
