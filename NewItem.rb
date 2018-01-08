class NewItem

attr_accessor :label, :benefit, :weight, :amount, :value

  def initialize(label, benefit, weight, amount, value)
    @label = label
    @benefit = benefit
    @weight = weight
    @amount = amount
    @value = value
  end #end of the initialize method
end # end of the class
