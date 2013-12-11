# require "lib/prct09/Matriz.rb"
require_relative 'Matriz.rb'


	MatrizMadre = Matriz.new()
	puts "MATRICES DENSAS"
	puts ""
	puts "Mat_A"
	Mat_A = MatrizMadre.convert([[1, 2], [3, 4]])
	puts "#{Mat_A}"
	puts "Clase de Mat_A: #{Mat_A.class}"
	
	puts ""
	
	puts "Mat_B"
	Mat_B = MatrizMadre.convert([[2, 3], [7, 1]])
	puts "#{Mat_B}"
	puts "Clase de Mat_B: #{Mat_B.class}"
	
	puts ""
	
	puts "Sum A+B:"
	puts "#{(Mat_A + Mat_B)}"
	
	puts ""
	
	puts "Prod A*B:"
	puts "#{(Mat_A * Mat_B)}"
	
	puts ""
	
	puts "Maximos"
	puts "Maximo de Mat_A: #{Mat_A.max}"
	puts "Maximo de Mat_B: #{Mat_B.max}"
	
	puts ""
	
	puts "Minimos"
	puts "Minimo de Mat_C: #{Mat_A.min}"
	puts "Minimo de Mat_D: #{Mat_B.min}"
	
	puts ""
	
	puts "Matriz Nula"
	mat_Nula = Matriz_Densa.new(2, 2)
	mat_Nula.nulo
	puts "#{mat_Nula}"
	
	puts ""
	
	#---------------------------------------------
	
	puts "MATRICES DISPERSAS"
	puts ""
	puts "Mat_C"
	Mat_C = MatrizMadre.convert([[1, 0], [0, 0]])
	puts "#{Mat_C.to_s}"
	puts "Clase de Mat_C: #{Mat_C.class}"

	puts ""
	
	puts "Mat_D"
	Mat_D = MatrizMadre.convert([[4, 0], [0, 0]])
	puts "#{Mat_D}"
	puts "Clase de Mat_D: #{Mat_D.class}"
	
	puts ""
	
	puts "Sum C+D:"
	puts "#{(Mat_C + Mat_D)}"
	
	puts ""
	
	puts "Prod C*D:"
	puts "#{(Mat_C * Mat_D)}"
	
	puts ""
	
	puts "Maximos"
	puts "Maximo de Mat_C: #{Mat_C.max}"
	puts "Maximo de Mat_D: #{Mat_D.max}"
	
	puts ""
	
	puts "Minimos"
	puts "Minimo de Mat_C: #{Mat_C.min}"
	puts "Minimo de Mat_D: #{Mat_D.min}"
	
	puts ""
	
	puts "Matriz Nula"
	mat_Null = Matriz_Dispersa.new(2, 2)
	mat_Null.nulo
	puts "#{mat_Nula}"
	
	puts ""
	#---------------------------------------------
	
	puts "DOMAIN SPECIFIC LANGUAGE: DSL para Matrices"
	
	ejemplo = MatrizDSL.new("suma") do 
		option "densa" 
		option "console"
		operand [[1,2,3],[4,5,6],[7,8,9]]
		operand [[1,1,1],[1,1,1],[1,1,1]]
	end
	puts "Clase de ejemplo: #{ejemplo.class}"
	puts "#{ejemplo}"
	