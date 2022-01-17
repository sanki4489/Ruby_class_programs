class Dice
    def roll
        @dice1 = rand(6) + 1
        @dice2 = rand(6) +2
    end

    def display
        [@dice1, @dice2]
    end
end

#way to use the dice
# 1. require_relative 'dice.rb' => true
# 2. dice = Dice.new
# 3. dice.roll
# 4. dice.display => [1,3]
