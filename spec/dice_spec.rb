require './lib/dice'

# As a board game player, So that I can play a game 
# I want to be able to roll a dice
# As a board game player, So that I know how many steps 
# I should move Rolling a dice should give me a number between 1 and 6
# As a dice app developer, So that I give players a good game experience 
# I want the dice roll to be randomly picked
# As a board game player, So that I can play many types of games 
# I want to be able to roll any number of dice at the same time
# As a board game player, So that I know what my score was when 
# I rolled several dice I want to get the result of each dice roll

describe Dice do
    # checks if there is  an instance of a Dice
    it 'makes an instance of a Dice' do
        dice = Dice.new
        expect(dice).to be_instance_of(Dice)

    end 
    # checks if dice Class responds to roll method
    it 'allows player to roll a dice' do
        dice = Dice.new
        expect(dice).to respond_to(:roll)
    end 
    # checks the roll method gives numbers between 1 and 6
    it 'rolling the dice return a number between 1 and 6' do
        dice = Dice.new
        expect(dice.roll).to be_between(1, 6).inclusive
    end
    # checks that player is capable of rolling more than 1 dice at a time e.g (10)
    it 'multiple number of dice can be thrown at once' do
        dice = Dice.new
        dice.number_of_dice(10)
        expect(dice.total_result.count).to eq 10
    end
    # checks that it gives the score of the dices rolled e.g (15)
    it 'gives the score of the rolled dices' do
        dice = Dice.new
        dice.number_of_dice(15)
        expect(dice).to respond_to(:total_result)
    end
end 

