grocery_list = *["carrots", "toilet paper", "apples"]
grocery_list << "rice"
grocery_list.count
puts grocery_list
puts grocery_list.length
if grocery_list.include?("banana")
  puts "You need to pick up bananas"
else
  puts "You dont need to pick up bananas today"
end
puts grocery_list[1]
