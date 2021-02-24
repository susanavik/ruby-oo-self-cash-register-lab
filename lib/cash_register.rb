class CashRegister
    attr_accessor :total, :title, :price, 

    def initialize(total) 
        @total=0
    end
    def discount(discount=20)
        @discount=discount
    end
    def add_item(title, price, quantity=1)
        @total = @total + (quantity * price)
    end 

    def apply_discount(discount)
        if @discount == 0
            return "There is no discount to apply."
        else
            self.total = (total * ((100 - discount)/100)).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

end
