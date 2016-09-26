#methods

def test
  x = 20
end
puts test


def test
   i = 100
   j = 70
   k = 40
   return i,j,k
end
  puts test

#blocks
def call_block
  puts "start of method"
  yield
  yield
  puts "end of method"
end
call_block {puts "In the block"}

#arrays
puts "The following are the Arrays!"

ary = [1,'Nithin',18.8,"bangalore","karnataka"]
ary[1] = "Reddy"
puts "#{ary}"

ary = ['apple','banana','jackfruit','guava','orange']
puts "#{ary}"

ary = %w[apple banana jackfruit guava orange]
puts "#{ary}"

ary = [1,'two',3.0]
ary = Array.new
Array.new(3)
Array.new(3, true)
puts "#{ary}"

arr = [1, 2, 3, 4, 5, 6]
arr[2]    
arr[100]  
arr[-3]   
arr[2, 3] 
arr[1..4] 
arr.at(0)

puts "#{arr[2]}"
puts "#{arr[100]}"
puts "#{arr[-3]}"
puts "#{arr[2, 3]}"
puts "#{arr[1..4]}"
puts "#{arr.at(0)}"

a = [1, 2, 3, 4, 5, 6]
a.first
a.last
a.take(3)
a.drop(3)
a.length
a.count
a.empty?
a.include?(6)

puts "#{a.first}"
puts "#{a.last}"
puts "#{a.take(3)}"
puts "#{a.drop(3)}"
puts "#{a.length}"
puts "#{a.count}"
puts "#{a.empty?}"
puts "#{a.include?(6)}"

ar = ["a","b","c"]
ar.each{|x| print x, ".."}
ar.each_index{|x| print x,".." }


#hashes
puts " The following are the Hashes!"
inst_section = {
  'Nithin' => 'string',
  'age' =>  'integer',
  'dob' => 'integer',
  'native' => 'string'
}

puts "#{inst_section}"
p inst_section #will produce same output

#using symbols
inst_section = {
  :nithin => 'string',
  :age => 'integer',
  :dob => 'integer',
  :native => 'string'

}
 p inst_section

#another way to declare keys

 inst_section = {
  nithin: 'string',
  age: 'integer',
  dob: 'integer',
  native: 'string'
 }
 p inst_section

countries = {
  "ind" => "India",
  "ger" => "Germany",
  "spa" => "Spain",
  "fra" => "France",
  "uk" => "United Kingdom",
  "us" => "Unted States",
}
 newcountries = countries.invert
 puts newcountries.keys.inspect
 puts newcountries.values.inspect
 puts newcountries.inspect
 
 names = Hash.new
  names[1] = "nithin"
  names[2] = "reddy"
  names[3] = "pawan"
  names[4] = "gowtham"
  names[5] = "prathap"
 puts names
 names.delete(5)
 puts names
 names.shift
 puts names
 names.delete_if{|key, value| key == 2}
 puts names.inspect

#Random numbers in ruby

puts rand 
puts (0..5).map{rand(0..10)}

#srand
srand 1234
puts rand,rand
srand 1234
puts rand,rand