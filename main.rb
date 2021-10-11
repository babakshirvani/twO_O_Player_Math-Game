require './players'
require './questions'
require './game'

player_1 = Player.new("Babak")
player_2 = Player.new("Mahsa")

game = Game.new(player_1, player_2)
game.start_game