
def fahrenheittodegrees(fahrenheit)
  temperatureconversion = (fahrenheit.to_i - 32) * 5/9
  puts "the temperature in degrees is #{temperatureconversion}"
end

puts "what is the temperature in Fahrenheit?"
temp_fahrenheit = gets.chomp
fahrenheittodegrees(temp_fahrenheit)
