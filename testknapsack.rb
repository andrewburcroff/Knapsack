require './NewItem'
require './Fractional_Knapsack'
require 'rubygems'
require 'algorithms'
require 'benchmark'
include Containers

  fraction = Knapsack.new #Creating an instance of Knapsack
  heap = MaxHeap.new #Creating an instance of MaxHeap

  item1 = fraction.newItem('A', 12, 4, 0) #Creating a new item of the fraction of the Knapsack 3
  item2 = fraction.newItem('B', 8, 4, 0) #Creating a new item of the fraction of the Knapsack 2
  item3 = fraction.newItem('C', 16, 4, 0) #Creating a new item of the fraction of the Knapsack 4
  item4 = fraction.newItem('D', 4, 4, 0) #Creating a new item of the fraction of the Knapsack 1
  item5 = fraction.newItem('E', 32, 4, 0) #Creating a new item of the fraction of the Knapsack 8
  local = fraction.real

  fraction.Knapsack(local)

    #local[i].value = local[i].benefit/local[i].weight
=begin
  for t in 0..fraction.numOfItems - 1
      local[t].value = local[t].benefit/local[t].weight
      heap.push([local[t].value, local[t]])
  end

  while(fraction.cumWeight < fraction.weight && fraction.numOfItems !=0) #While Loop: cumWeight < overal weight and there are items.
    high = heap.pop #setting a variable high to the local of the  heap pop
    amount = [high[1].weight, fraction.weight - fraction.cumWeight].min # Setting the variable amount to the weight and fraction weight - the cumWeight min value
    high[1].amount = amount # Setting the variable amount to the heap
    fraction.cumWeight = fraction.cumWeight + high[1].weight
    puts "The label #{high[1].label} has a weight #{high[1].weight} and has value of #{high[1].value}" #Print statement with the heap varaibles
    puts "The total weight is #{fraction.cumWeight}." #Print statement for the cumulative weight
  end
=end
