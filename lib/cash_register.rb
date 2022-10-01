class CashRegister 
    attr_accessor :total,:discount,:lastTotal,:items
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title,price,quantity=1)
        quantity.times do 
            self.items.push(title)
        end
        self.lastTotal = price*quantity
        self.total += lastTotal
    end
    def apply_discount 
    unless discount ==0
        self.total -= self.total* discount / 100
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
    end
    def void_last_transaction
        self.total -= self.lastTotal
    end
    
end
