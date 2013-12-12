# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Matriz_Dispersa

require_relative '../lib/prct09/Matriz.rb'
require 'test/unit'

class Test_Matriz_DSL < Test::Unit::TestCase
	
	def setup
		@ejemplo1 = MatrizDSL.new("suma") do 
			option "densa" 
			option "console"
			operand [[1,2,3],[4,5,6],[7,8,9]]
			operand [[1,1,1],[1,1,1],[1,1,1]]
		end
		@ejemplo2 = MatrizDSL.new("producto") do 
			option "densa" 
			option "file"
			operand [[1,2,3],[4,5,6],[7,8,9]]
			operand [[1,1,1],[1,1,1],[1,1,1]]
		end
	end #setup
	
 	def test_initialize
		assert_not_equal("nil", @ejemplo1.mostrar_datos)
 		assert_not_equal("nil", @ejemplo2.mostrar_datos)
 	end
	
	def test_clase
		assert_equal("MatrizDSL", @ejemplo1.class.to_s)
 		assert_equal("MatrizDSL", @ejemplo2.class.to_s)
	end
	
 	def test_suma
 		assert_equal("2 3 4 \n5 6 7 \n8 9 10 \n", @ejemplo1.to_s)
 	end
 	
 	def test_producto
 		assert_equal("6 6 6 \n15 15 15 \n24 24 24 \n", @ejemplo2.to_s)
 	end
	
end
