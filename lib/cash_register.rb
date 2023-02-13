class CashRegister
    attr_accessor :discount, :total, :items, :title, :quantity, :last_transaction

    def initialize (*discount)
        @discount = discount[0]
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times {@items << title} 
        @last_transaction = price * quantity
        @total += price*quantity
    end

    def apply_discount  
        if @discount
            @total = (@total.to_f - (@total * discount / 100)).to_i
            "After the discount, the total comes to $#{total}."
        else "There is no discount to apply."
        end
    end

    def items 
        @items
    end
    
    def void_last_transaction
        @total -= last_transaction
    end

    
end
