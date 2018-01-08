require './NewItem'
require './Fractional_Knapsack'
require 'rubygems'
require 'algorithms'
require 'benchmark'
include Containers


class Benchmarktester

    fraction = Knapsack.new #Creating an instance of Knapsack

    num =0

    #heap = MaxHeap.new
    file = File.open('TEST4.csv', 'w')
    benefit = Random.rand(1..10000)
    (10..10000).each do |size| # data points going to have |size| = the the varaible in there like t
      for t in 0..(size*10000) -1
        label = t
        #benefit = Random.rand(1..1000)
        weight = 1
        amount = 0
        value = 0
        #fraction.newItem(label, benefit, weight, amount, value)
      end # end of for loop on line 16
      fraction.newItem(label, benefit, weight, amount, value)

      local = fraction.real

      #puts "#{fraction.numOfItems}"
      num = num + 1
      #puts "#{fraction.real}"
      #puts "#{fraction.weight}"
      puts "#{num}"

      time = Benchmark.measure do |i|
        10.times do
          fraction.Knapsack(local)
        end # end for 10.times do on line 33
      end # end for benchmark on 32
      file.write("#{size*10},#{time.real/10}\n")
    end # end of for loop each do size on line 18
  file.close
end # end of method

#end # end of class
