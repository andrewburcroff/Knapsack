require 'rubygems'
#require 'algorithms'

#require-relative '_heap'
require 'algorithms'
include Containers

class Tester

  attr_accessor :value

  def initialize
    value = value
  end
end

  heap = MaxHeap.new
  puts "TEST 1 with E=0, D=1, C=2, D=4, A=4,"
  heap.push(['E',0])
  heap.push(['D',1])
  heap.push(['C',2])
  heap.push(['B',3])
  heap.push(['A',4])
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"

  puts "TEST 2 with E=5, D=1, C=2, D=4, A=4,"
  heap.push(['E',5])
  heap.push(['D',1])
  heap.push(['C',2])
  heap.push(['B',3])
  heap.push(['A',4])
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"

  puts "TEST 3 with E=5, D=1, C=2, D=4, Q=4,"
  heap.push(['E',5])
  heap.push(['D',1])
  heap.push(['C',2])
  heap.push(['B',3])
  heap.push(['Q',4])
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"

  puts "TEST 4 with E=5, D=1, Z=2, D=4, Q=4,"
  heap.push(['E',5])
  heap.push(['D',1])
  heap.push(['Z',2])
  heap.push(['B',3])
  heap.push(['Q',4])
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"
  puts "#{heap.pop}"


  puts "TEST 5 with E=5, D=1, C=2, D=4, A=4,"
    heap.push([4, 'A'])
    heap.push([5, 'B'])
    heap.push([2, 'C'])
    heap.push([9, 'D'])
    heap.push([1, 'W'])

    puts "#{heap.pop}"
    puts "#{heap.pop}"
    puts "#{heap.pop}"
    puts "#{heap.pop}"
    puts "#{heap.pop}"
