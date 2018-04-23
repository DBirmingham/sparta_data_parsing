require 'nokogiri'

class GiuseppesMenu

	attr_accessor :menu

	def initialize
		@menu = Nokogiri::XML(File.open('xml_menu.xml'))
	end

	def get_names
		@menu.search('name')
	end

	def xpath_get_names
		# @menu.xpath('/breakfast_menu/food/name')
		@menu.xpath('//name')
	end

	def get_all_food_items
  		@menu.search('food')
	end

	def get_the_nth_food_item_by_index(number)
	  	get_all_food_items[number]
	end

	def get_nth_child_of_food_item(food_index, child_index)
		get_the_nth_food_item_by_index(food_index).element_children[child_index]
	end

	def get_all_prices_as_floats
	  	n = 0
	  	prices = []
	  	while (n < @menu.search('price').length)
	  		prices << @menu.search('price')[n].text[1..-1].to_f
	  		n += 1
	  	end
	  	prices

	  	# @menu.search('price').text.split('£').pop.each do |price|
	  	# 	price.to_f
	  	# end

	  	# @menu.xpath('//price').each do |price|
	  	# 	prices << price.text.gsub('£','').to_f
	  	# end
	end

	def xpath_get_calories
		@menu.xpath('//calories')
	end
end

x = GiuseppesMenu.new

# puts x.menu
puts x.get_names.last.text
puts x.get_nth_child_of_food_item 1, 2
puts x.get_all_prices_as_floats
