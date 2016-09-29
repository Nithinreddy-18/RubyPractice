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

#NEXT & REDO statements
for i in 0..5
  if i<2
    next
  end
  puts "The value of local variable i = #{i}"
end

=begin
for i in 0..5
  if i<2
    puts "The value of local variable i = #{i}"
    redo
  end
end
=end 
puts "The above redo prgm produces infinite loop!"



#Blocks & Yield with and without parameters
 def name
    puts "you are in the Method."
    yield
  end
  name{
    puts "you are in the Block."
  }

def name
  puts "you are in the Method."
  yield 5
end
name{
|i|puts "you are in the Block #{i}."
}




#code of passing Block to a Method
def met(&b)
  #yield
  b.call
  3.times do (b.call) end
end
met{
  puts "Hello World!!!"
}

 

 #ruby BEGIN & END Block

 def test
  puts "This is a Method........................................"
end
test

BEGIN {
    puts "This is executed at the begining."
  }
END {
    puts "This is executed at the end."
  }



#Modules
module Trig
  PI = 3.1416
def Trig.sinfunc(x)
  puts Math.sin(x)
end
def Trig.cosfunc(x)
  puts Math.cos(x)
  end
end 
puts Trig::PI
puts Trig.sinfunc(1)



module Trig
  def Trig.sinfunc(x)
  puts Math.sin(x)
end
def Trig.cosfunc(x)
  puts Math.cos(x)
  end
end 
module Moral
  Bad = 1
  Very_bad = 0
  def Moral.sinfunc(badnesslevel)
    if(badnesslevel == 0)
      puts "you are Very bad"
    else
      puts "you are just Bad"
    end
  end
end

puts Trig.sinfunc(0)
puts Moral.sinfunc(Moral::Very_bad)



#Methods overriding
class ParentBox
  def initialize(h,w)
    @height,@width = h,w
  end
  def getarea
    puts "The area of the ParentBox is  #{@height*@width+100}"
  end
end
class ChildBox < ParentBox
  def getarea
    puts super()
    puts "The area of the ChildBox is #{@height*@width}"
  end
  end
  childobject = ChildBox.new(20,10)
  puts childobject.getarea



#Operator Overloading
class Tester1
 def initialize x
   @x = x
 end

 def +(y)
   @x + y
 end
end

a = Tester1.new 5
puts(a + 3)
# => 8
a += 7
puts a
# => 12


