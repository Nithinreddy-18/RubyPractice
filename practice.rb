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
a = [1,'Nithin',18.8,"bangalore","karnataka"]
a[1] = "Reddy"
puts "#{a}"

a = ['apple','banana','jackfruit','guava','orange']
puts "#{a}"

a = %w[apple banana jackfruit guava orange]
puts "#{a}"

#hashes
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
