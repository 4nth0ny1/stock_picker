class StockPicker::Portfolio

    def initialize(total_value, stocks)
        @total_value = total_value
        @stocks = stocks
    end

    def self.hello
        puts "This is your portfolio, and this is where you can see all the stocks you've added to it."
        puts "From here you can see you total investment value, and access the financial information of all the stocks you've purchased."
    end 


end 