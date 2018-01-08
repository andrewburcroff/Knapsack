require 'rubygems'
require 'algorithms'
include Containers

class Knapsack

  attr_accessor :real, :weight, :cumWeight, :numOfItems

  def initialize()
    @real = Array.new
    @weight = 20
    @cumWeight = 0
    @numOfItems = 0

  end # end of initialize Method

  def newItem(label, benefit, weight, amount, value)
    item = NewItem.new(label, benefit, weight, amount, value)
    @real.push(item)
    @numOfItems += 1
  end # end of newItem Method

  def Knapsack(local)
    heap = MaxHeap.new
    for t in 0..@numOfItems - 1
        local[t].value = local[t].benefit /  local[t].weight #Value = benefit/ weight
        #puts "#{numOfItems- 100}"
        heap.push([local[t].value, local[t]]) #pushing the value with an object of the heap
    end

    #puts "#{numOfItems}"

    while(@cumWeight < @weight && heap.size!=0) #While Loop: cumWeight < overal weight and there are items.
      high = heap.pop #setting a variable high to the local of the  heap pop
      #puts "#{high}"
      donald = high[1].weight
      #puts " HEY"
      amount = [donald, @weight - @cumWeight].min # Setting the variable amount to the weight and fraction weight - the cumWeight min value
      #puts "#{high}"
      high[1].amount = amount # Setting the variable amount to the heap
      @cumWeight = @cumWeight + high[1].weight
      #puts "The label #{high[1].label} has a weight #{high[1].weight} and has value of #{high[1].value}" #Print statement with the heap varaibles
      #puts "The total weight is #{fraction.cumWeight}." #Print statement for the cumulative weight
    end
  end
  

end # end of the class
