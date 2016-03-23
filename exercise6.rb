grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
puts grocery_list.map! {|item| "*" + item}
grocery_list << "*rice"
puts grocery_list.length
if grocery_list.include?("banana")
  puts "You need to pick up bananas"
else
  puts "You dont need to pick up bananas today"
end
puts grocery_list[1]
grocery_list.delete_at(3)
puts grocery_list.sort
