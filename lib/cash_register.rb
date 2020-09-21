class CashRegister
  
  
  attr_accessor :items, :discount
  attr_reader :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
  end
  @last_total = total
  @total += price * quantity
end
  
  def apply_discount
    @total = (@total * @discount.to_f / 100).to_i
    if @discount != 0
      puts "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
  end
end
  
 
  
  def void_last_transaction
    @
    
  end
  
  
  
  
end



# class CashRegister

#   attr_accessor :total, :discount, :last_transaction_amount, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end


#   def add_item(title,price,quantity = 1)
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title
#         i+=1
#       end
#     else
#       @items << title
#     end
#     @total += price*quantity
#     @last_transaction_amount = @total
#     @total
#   end

#   def apply_discount()
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end


#   def void_last_transaction()
#     @total -= @last_transaction_amount
#   end

# end
