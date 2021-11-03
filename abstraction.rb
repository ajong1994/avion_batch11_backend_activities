class NFT_Profit 
    def initialize(start_bal)
        @bal = start_bal
        @nft_list = []
    end

    def purchase(name, quantity, price)
        new_nft = {name: name, value: quantity * price}
        @nft_list << new_nft
    end

    def sell(name)
        @nft_list.each do |nft|
            if nft[:name] == name 
                @bal += nft[:value]
                @nft_list.delete(nft)
            end
        end
    end

    def display
        puts @nft_list.inspect
        puts @bal
    end
end

obj1 = NFT_Profit.new(0)
obj1.purchase("Kobe", 2, 30)
obj1.purchase("LBJ", 1, 100)
obj1.sell("Kobe")
obj1.display