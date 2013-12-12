require_relative '../lib/prct09/Matriz.rb'

describe Matriz_Densa do
  before :each do
	  @ejemplo1 = MatrizDSL.new("suma") do 
			option "densa" 
			option "console"
			operand [[1,2,3],[4,5,6],[7,8,9]]
			operand [[1,1,1],[1,1,1],[1,1,1]]
			operand [[1,1,1],[1,1,1],[1,1,1]]
		end
		@ejemplo2 = MatrizDSL.new("producto") do 
			option "densa" 
			option "file"
			operand [[1,2,3],[4,5,6],[7,8,9]]
			operand [[1,1,1],[1,1,1],[1,1,1]]
		end
		matrizMadre = Matriz.new()
		
  end
  
  describe "# Carga de Datos" do
	  it "Los operandos y las opciones no deben estar vacios " do
		  @ejemplo1.mostrar_datos.should_not == "nil"
		  @ejemplo2.mostrar_datos.should_not == "nil"
	  end
  end
  
    describe "# Suma" do
		 it "Se deben poder sumar varias matrices" do
			 @ejemplo1.to_s.should eq("3 4 5 \n6 7 8 \n9 10 11 \n")
		 end
	 end
	 
	 describe "# Producto" do
		 it "Se deben poder multiplicar varias matrices" do
			 @ejemplo2.to_s.should eq("6 6 6 \n15 15 15 \n24 24 24 \n")
		 end
	 end
  
end