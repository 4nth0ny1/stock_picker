## CLI Controller

class StockPicker::CLI

    def call 
        greeting
        menu_items
        menu_logic   
        @show_stock = StockPicker::Stock.show_stock
        @get_additional_stock_information = StockPicker::Stock.get_additional_stock_information  
    end 

    def greeting 
        puts " "
        puts "Welcome to your new stock portfolio builder."
        puts "This program gets current stock information from the markets and allows you to build a portfolio."
        puts "It even allows you to check your investments and quickly see how much money you've made."
        puts " "
    end 

    def menu_items
        puts "MAIN MENU"
        puts "1. Analyze a stock"
        puts "2. Check your portfolio"
        puts "Type menu to come back to the menu."
        puts "Type exit to exit the program."
        puts " "
    end 

    def menu_logic
        user_menu_input = nil
        while user_menu_input != "exit"
            puts "Choose a number to analyze a stock or check your portfolio:"
            user_menu_input = gets.strip.downcase

            if user_menu_input = "1"
                StockPicker::Stock.show_stock
                StockPicker::Stock.get_additional_stock_information
            elsif "2"
                puts "Let's check that portfolio..."                    ## ERROR ====  when i select 2 it goes to analyze a stock instead. 
            elsif "menu"
                menu_items
            elsif "exit"
                goodbye
            else 
                puts "your choices are: type ... 1, 2, menu or exit"
            end  
        end
    end 

    def goodbye
        puts "Looks like your done. Goodbye"
    end
end 