# Please replace the Dir Path at the bottom with new dir path of dict.txt
# also While giving the input to the program, please give the number more than 100 
#to get the result in the first go
@dir_path = "/home/pankaj/codeTest/dict.txt"
puts "DONT FORGET TO REPLACE THE DIR PATH FOR Dict.txt !!!"

require 'matrix'

def create_grid(a)
	@x = a.to_i
	@grid = Matrix.build(@x, @x){|r, c|('A'..'Z').to_a[rand(26)]} 
	return @grid
	
end

#Retrieve all Letters from text file 
def read_dir(path)
	@path = path
	@letters = Array.new()
	File.open(@path, "r") do |f|
        f.each_line do |line|
         @letters << line.split.first
    end
    return @letters
   end	
end


def retreive_row(k)
	@temp = Array.new()
	@temp = @grid.row(k).to_a.join("")
	#puts "#{k}th row: "
	#puts @temp
	return @temp
end

def retreive_column(k)
	@temp_c = Array.new()
	@temp_c = @grid.column(k).to_a.join("")
	#puts "#{k}th Column: "
	#puts @temp_c
	return @temp_c
end

def retreive_diagonal(k)
	@temp_d = Array.new()
	@temp_d = @grid.each(:diagonal).to_a.join("")
	#puts "#{k}th Diagonal: "
	#puts @temp_d
	return @temp_d
end






def find_horizontal_Left2Right(a, letters)
	@a = a
	@letters = letters
	#Retrive all the Letters 
	for i in 0..(a-1)
		retreive_row(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "Horizontal LR includes: #{@letters[i]}"
		 else
		 	#puts "Horizontal LR DOES NOT includes: #{@letters[i]}"
			
		end
end
end


def find_horizontal_Right2Left(a, letters)

	@a = a
	#Retrive all the Letters 
	@letters = letters
	
	for i in (a-1)..0
		retreive_row(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "Horizontal RL includes: #{@letters[i]}"
		 else
		 	#puts "Horizontal RL DOES NOT includes: #{@letters[i]}"
			
		end
end
	
end


def find_vertical_Top2Bottom(a, letters)

@a = a
#Retrive all the Letters 
@letters = letters
	
	
	for i in 0..(a-1)
		retreive_column(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "vertical T2B includes: #{@letters[i]}"
		 else
		end
end
	
end
def find_vertical_Bottom2Top(a, letters)

	@a = a
	@letters = letters
	
	
	for i in (a-1)..0
		retreive_column(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "verical B2T includes: #{@letters[i]}"
		 else
		 	#puts "vertical B2T DOES NOT includes: #{@letters[i]}"
			
		end
end
	
end

def find_diagonal_Left2Right(a, letters)

	@a = a
	@letters = letters
	
	
	for i in 0..a-1
		retreive_diagonal(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "Diagonal LR includes: #{@letters[i]}"
		 else
		 	#puts "Diagonal LR DOES NOT includes: #{@letters[i]}"
			
		end
end
	
end
def fine_diagonal_Right2Left(a, letters)

	@a = a
	@letters = letters
	
	
	for i in (a-1)..0
		retreive_diagonal(i)
		if @temp.to_s.include? @letters[i].to_s
			puts "Diagonal LR includes: #{@letters[i]}"
		 else
		 	#puts "Diagonal LR DOES NOT includes: #{@letters[i]}"
			
		end
end
	
end

puts "Add the number of rows:"
@a = gets
create_grid(@a)

 
@letters = read_dir(@dir_path)
#puts @grid

find_horizontal_Left2Right(@a.to_i, @letters)
find_horizontal_Right2Left(@a.to_i, @letters)
find_vertical_Top2Bottom(@a.to_i, @letters)
find_vertical_Bottom2Top(@a.to_i, @letters)
find_diagonal_Left2Right(@a.to_i, @letters)
fine_diagonal_Right2Left(@a.to_i, @letters)






















