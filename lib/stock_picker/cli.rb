## CLI Controller

class StockPicker::CLI

    def call 
        greeting
        menu_items
        menu_logic 
    end 

    def greeting 
        puts " "
        puts "STOCK PICKER"
        puts "This program gets current stock information from the markets and allows you to build a portfolio."
        puts "It even allows you to check your investments and quickly see how much money you've made."
        puts " "
        puts "DISCLAIMER: This app does not have the capability to save your data if you exit prematurely. Please save all portfolio information prior to exiting."
        puts " "
    end 

    def menu_items
        puts "MAIN MENU"
        puts "1. Analyze a stock"
        puts "2. Check your portfolio"
        puts "3. Value an existing portfolio"
        puts "Type menu to come back to the menu."
        puts "Type exit to exit the program."
        puts " "
    end 

    def menu_logic
        user_menu_input = nil
        while user_menu_input != "exit"
            puts "Choose a number to analyze a stock or check your portfolio:"
            user_menu_input = gets.strip.downcase

            if user_menu_input == "1"
                StockPicker::Stock.show_stock
                StockPicker::Stock.get_additional_stock_information
            elsif user_menu_input == "2"
                StockPicker::Portfolio.hello                   ## ERROR ====  when i select 2 it goes to analyze a stock instead. 
            elsif user_menu_input == "3"
                puts " "
                StockPicker::ExistingPortfolio.check
            elsif user_menu_input == "menu"
                puts " "
                menu_items
            elsif user_menu_input == "exit"
                puts " "
                goodbye
            else 
                puts "your choices are: type ... 1, 2, 3, menu or exit"
            end  
        end
    end 

    def goodbye
        puts "Looks like your done. Goodbye"
    end
end 