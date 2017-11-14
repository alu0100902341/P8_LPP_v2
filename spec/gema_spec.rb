#Esto es un comentario

require "spec_helper"

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

		@lista1 = [nil, nil, nil]
		@lista_dl1 = Lista.new(@lista1)

		@lista2 = [nil, 1, nil]
		@lista_dl2 = Lista.new(@lista2)

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

# P8 ---------------------------------------------------------------------------------------------------- Enumerable

	it "comprobrando el metodo all? con un bloque vacio y no vacío" do
	   expect(@lista_dl.all?).to eq(true)
	   expect(@lista_dl1.all?).to eq(false)
	end 

	it "comprobrando el metodo any? con un bloque vacio y no vacío y uno casi vacío" do
	   expect(@lista_dl.any?).to eq(true)
	   expect(@lista_dl1.any?).to eq(false)
	   expect(@lista_dl2.any?).to eq(true)
	end 

	it "comprobrando el metodo collect" do
	   expect(@lista_dl.map{|i| i}).to eq(@lista_dl.array)
	   expect(@lista_dl2.collect{|i| i}).to eq([nil, 1, nil])
	end

	it "comprobrando el metodo count" do
	   expect(@lista_dl.count).to eq(6)
	   expect(@lista_dl1.count).to eq(3)
	   expect(@lista_dl2.count).to eq(3)
	end

	it "comprobrando el metodo detect" do
	   expect(@lista_dl.detect{|i| i == Nodo.new(3, 4, 2)}).to eq(Nodo.new(3, 4, 2))
	   expect(@lista_dl.detect{|i| i == Nodo.new(3, 4, 9)}).to eq(nil)
	   expect(@lista_dl2.detect{|i| i == 1}).to eq(1)
	end

	it "comprobrando el metodo drop" do
	   expect(@lista_dl.drop(2)).to eq([Nodo.new(2, 3, 1), Nodo.new(3, 4, 2), Nodo.new(4, 5, 3), Nodo.new(5, 0, 4)])
	   expect(@lista_dl2.drop(2)).to eq([nil])
	end

end


  describe Grupo_alimento do

	before :each do

		@alimento1 = Grupo_alimento.new( "Huevos, lácteos y helados", ["Huevo frito", 14.1, 0.0, 19.5] )	#kcal = 231,9
		@alimento2 = Grupo_alimento.new( "Huevos, lácteos y helados", ["Leche de vaca", 3.3, 4.8, 3.2] )	#kcal = 61,2
		@alimento3 = Grupo_alimento.new( "Carnes y derivados','Pescados y mariscos", ["Bacalao", 17.7, 0.0, 0.4] )	#kcal = 74,4
	end

	it "Comprobar pertenencia a las clases." do
	   expect(@alimento1.class).to eq(Grupo_alimento)
	 end

	it "Comprobar tipo de dato." do
	   expect(@alimento1.is_a? Grupo_alimento).to eq(true)
	 end

	it "Comprobar pertenencia a jerarquía." do
	   expect(@alimento1.class.superclass).to eq(Alimento)
	 end

# P8 ---------------------------------------------------------------------------------------------------- Comparable

	it "Comprobar igualdad alimento1 consigo mismo." do
	   expect(@alimento1 == @alimento1).to eq(true)
	 end

	it "Comprobar igualdad alimento1 con alimento2." do
	   expect(@alimento3 == @alimento2).to eq(false)
	 end

	it "Comprobar alimento3 < alimento1." do
	   expect(@alimento3 < @alimento1).to eq(-1)
	 end

	it "Comprobación alimento3 > alimento2." do
	   expect(@alimento3 > @alimento2).to eq(1)
	 end

	it "Comprobar alimento3 <= alimento1." do
	   expect(@alimento3 <= @alimento1).to eq(-1)
	 end

	it "Comprobación alimento3 >= alimento2." do
	   expect(@alimento3 >= @alimento2).to eq(1)
	 end

	
	it "Comprobación alimento2 >= alimento1." do
	   expect(@alimento2 >= @alimento1).to eq(-1) #Devuelve -1, eso significa que alimento2 no es >= a alimento1
	 end
	

  end
  describe Piramide do


#@gp1 = [ Grupo_alimento.new( "Huevos, lácteos y helados", ["Huevo frito", 14.1, 0.0, 19.5] ), Grupo_alimento.new( "Huevos, lácteos y helados", ["Leche de vaca", 3.3, 4.8, 3.2] ), Grupo_alimento.new( "Huevos, lácteos y helados", ["Yogurt", 3.8, 4.9, 3.8] ) ] 

	before :each do

		@grupos = ['Huevos, lácteos y helados', 'Carnes y derivados','Pescados y mariscos', 'ALimentos grasos', 'Alimentos ricos en carbohidratos', 'Verduras y Hortalizas', 'Frutas']

		#puts "#{@grupos[0]}"

		@grupo = "Huevos, lácteos y helados"
		
		@gp1 = [Grupo_alimento.new(@grupo, ["Huevo frito", 14.1, 0.0, 19.5] ), Grupo_alimento.new(@grupo, ["Leche de vaca", 3.3, 4.8, 3.2]), Grupo_alimento.new(@grupo, ["Yogurt", 3.8, 4.9, 3.8])] 

		@gp2 = [ Grupo_alimento.new( @grupos[1], ["Cerdo", 21.5, 0.0, 6.3] ), Grupo_alimento.new( @grupos[1], ["Ternera", 21.1, 0.0, 3.1] ), Grupo_alimento.new( @grupos[1], ["Pollo", 20.6, 0.0, 5.6] ) ] 

		@gp3 = [ Grupo_alimento.new( @grupos[2], ["Bacalao", 17.7, 0.0, 0.4] ), Grupo_alimento.new( @grupos[2], ["Atún", 21.5, 0.0, 15.5] ), Grupo_alimento.new( @grupos[2], ["Salmón", 19.9, 0.0, 13.6] ) ]

		@gp4 = [ Grupo_alimento.new( @grupos[3], ["Aceite de oliva", 0.0, 0.2, 99.6] ), Grupo_alimento.new( @grupos[3], ["Mantequilla", 0.7, 0.0, 83.2] ), Grupo_alimento.new( @grupos[3], ["Chocolate", 5.3, 47.0, 30.0] ) ]

		@gp5 = [ Grupo_alimento.new( @grupos[4], ["Azúcar", 0.0, 99.8, 0.0] ), Grupo_alimento.new( @grupos[4], ["Arroz", 6.8, 77.7, 0.6] ), Grupo_alimento.new( @grupos[4], ["Lentejas", 23.5, 52.0, 1.4] ), Grupo_alimento.new( @grupos[4], ["Papas", 2.0, 15.4, 0.1] ) ]

		@gp6 = [ Grupo_alimento.new( @grupos[5], ["Tomate", 1.0, 3.5, 0.2] ), Grupo_alimento.new( @grupos[5], ["Cebolla", 1.3, 5.8, 0.3] ), Grupo_alimento.new( @grupos[5], ["Calabaza", 1.1, 4.8, 0.1] ) ] 

		@gp7 = [ Grupo_alimento.new( @grupos[6], ["Manzana", 0.3, 12.4, 0.4] ), Grupo_alimento.new( @grupos[6], ["Plátanos", 1.2, 21.4, 0.2] ), Grupo_alimento.new( @grupos[6], ["Pera", 0.5, 12.7, 0.3] ) ]

		@piramide = Piramide.new( [ @gp1, @gp2, @gp3, @gp4, @gp5, @gp6, @gp7 ] )

	end

	it "Comprobar pertenencia a las clases." do
	   expect(@piramide.class).to eq(Piramide)
	 end

	it "Comprobar tipo de dato." do
	   expect(@piramide.is_a? Piramide).to eq(true)
	 end


  end

end
