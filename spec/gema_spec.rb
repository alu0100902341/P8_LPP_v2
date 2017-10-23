require "spec_helper"
require "./lib/alimento"

RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe Alimento do

	before :each do

		@nutrientes = [ n0.new("Huevo frito", 14.1, 0.0, 19.5), n1.new("Leche de vaca", 3.3, 4.8, 3.2), n2.new("Yogurt", 3.8, 4.9, 3.8), n3.new("Cerdo", 21.5, 0.0, 6.3), n4.new("Ternera", 21.1, 0.0, 3.1), n5.new("Pollo", 20.6, 0.0, 5.6), n6.new("Bacalao", 17.7, 0.0, 0.4), n7.new("Atún", 21.5, 0.0, 15.5), n8.new("Salmón", 19.9, 0.0, 13.6), n9.new("Aceite de oliva", 0.0, 0.2, 99.6), n10.new("Chocolate", 5.3, 47.0, 30.0), n11.new("Azúcar", 0.0, 99.8, 0.0), n12.new("Arroz", 6.8, 77.7, 0.6), n13.new("Lentejas", 23.5, 52.0, 1.4), n14.new("Papas", 2.0, 15.4, 0.1), n15.new("Tomate", 1.0, 3.5, 0.2), n16.new("Cebolla", 1.3, 5.8, 0.3), n17.new("Manzana", 0.3, 12.4, 0.4), n18.new("Plátanos", 1.2, 21.4, 0.2) 		]	

	end

  end

end
