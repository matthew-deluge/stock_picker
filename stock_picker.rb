#stock_picker.rb
#takes an array of prices (where the index is the day) and returns the best day to buy and sell
def stock_picker(prices)
    high_profit = 0
    buy_day = 0
    sell_day = 0
    prices.each_with_index do |price, index|
        for i in 1..(prices.length-1)-index
           #puts i
            #puts price
            #puts index
            if prices[index+i]-price > high_profit
                high_profit = prices[index+i] - price
                buy_day = index
                sell_day = index+i
            end
        end 
    end
    return [buy_day, sell_day] 
end





p stock_picker([17,3,6,9,15,8,6,1,10])#[1,4]
p stock_picker([17,3,6,9,2,8,6,1,10])#[7,8]
p stock_picker([0,3,6,9,15,8,6,19,10])#[0,7]
p stock_picker([17,3,4])#[1,2]