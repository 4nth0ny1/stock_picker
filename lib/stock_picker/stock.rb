class StockPicker::Stock

    def self.show_stock
        puts "ANALYZE A STOCK"
        ## gets the stock symbol from the user 
        puts "Enter the stock symbol"                                       ## ERROR ====  if not valid symbol then repeat questions
        stock_symbol_input = gets.strip.downcase 
        ## displays the stock information 
        puts "Apple, Inc. (symbol: AAPL)"
        puts "Price: $299 per share"
        puts " "
        puts "Would you like to see additional financial information about this stock?"
        puts "Enter: yes or no"
    end 

    def self.get_additional_stock_information
        ## this method shows additional financial information, like P/E ratios and others.
        add_stock_info = gets.strip.downcase
        if add_stock_info == "yes"
            ## displays information 
            puts " "
            puts "hi, i'm more information about the stock"
            puts " "
            puts "Would you like to add this stock to your portfolio (type: add) or goto the main menu (type: menu)?"
            add_to_portfolio_or_goto_menu = gets.strip.downcase
            if add_to_portfolio_or_goto_menu = "add"
                purchase_stock
            elsif add_to_portfolio_or_goto_menu = "menu"
                menu_items
            else
                "from here you can type add or menu"
            end 
        else
            puts "(Type: add) to purchase the stock to your portfolio or (type: menu) to go back to the main menu."
            add_to_portfolio_or_goto_menu = gets.strip.downcase
                if add_to_portfolio_or_goto_menu = "add"
                    purchase_stock
                elsif add_to_portfolio_or_goto_menu = "menu"
                    menu_items
                else
                    "from here you can type add or menu"
                end  
            end
    end 

    def self.purchase_stock
        ## after the show_stock method runs, the user will be presented with the ability to analyze another stock, add this stock to the portfolio, or go back to the main menu.
        portfolio = []
        portfolio.collect do |stock|
            portfolio << stock
        end 
        portfolio
    end 


end 