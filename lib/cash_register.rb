require 'pry'

class CashRegister
    def initialize(discount = 0) 
        @total = 0
        @discount = discount
        @item_ary = []
    end

    #getter
    def discount
        @discount
    end

    #getter
    def total
        @total
    end

    #setter
    def total=(total)
        @total = total
    end

    def last_item
        @last_item
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            @item_ary << title 
        end
        @last_item = price * quantity
        @total = @total + price * quantity
    end

    def apply_discount
        if @discount > 0
            @total = @total - @total * @discount / 100
            return "After the discount, the total comes to $#{@total}." 
        else
            return "There is no discount to apply." 
        end  
    end

    def items
        @item_ary 
    end

    def void_last_transaction
        @total = @total - @last_item
    end

end



#name = CashRegister.new