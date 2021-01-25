## CLI Controller

class StockPicker::CLI
    def call 
        puts "yes CLI Controller is working."
        @stock = StockPicker::Stock.today
    end 
end 