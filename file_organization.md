## how to get the classes and the bin files to work together. 
bin/stock-picker 
        require './lib/stock_picker'
        StockPicker::CLI.new.call

lib/stock_picker.rb 
        require_relative "./stock_picker/version"
        require_relative "./stock_picker/cli"
        require_relative "./stock_picker/stock"

lib/stock_picker/cli
        class StockPicker::CLI

lib/stock_picker/stock
        class StockPicker::Stock

then CLI needs        
        @stock = StockPicker::Stock.today

then Stock needs
        def self.today
            puts "The Stock class is connected to the CLI."
        end 

===>>>    ac2@LAPTOP-7EBH0OS4:~/code/phase_one/stock_picker$ ./bin/stock-picker
                yes CLI Controller is working.
                The Stock class is connected to the CLI.