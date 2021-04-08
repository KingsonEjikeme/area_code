dial_book = {
	"abia"=> "440001",
	"adamawa"=> "640001",
	"anambra"=> "420001",
	"bauchi"=> "740001",
	"benue"=> "970001",
	"borno"=> "600001",
	"delta"=> "320001",
	"edo"=> "300001",
	"ekiti"=> "360001",
	"enugu"=> "400001"
}

def get_city_list(list)
	list.each{|k,v| puts k}
end

#get_city_list(dial_book)

def get_city_code(list, city)
	list[city]
end

loop do |variable|
	puts "Welcome, would you like to look up a city code?(Y/N)"
	answer = gets.chomp.downcase

	if answer[0] == 'y'
		#run code
		get_city_list(dial_book)

		#User Input for city
		puts "What city would you like to look up?"
		city = gets.chomp

		#Validate User Input
		if dial_book.include?(city)
			#run code
			

			#output
			puts "The area code for #{city} is #{get_city_code(dial_book, city)}"
		else
			puts "You have entered an invalid city name"
		end

	else
		puts "Thank you. Ciao!"
		break
	end
end
