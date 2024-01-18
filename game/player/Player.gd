extends Node

var title: String

var inventory: PlayerInventory

var upgrades: PlayerUpgrades

var restaurant: BaseRestaurant

var money: int
var level: int

var current_experience: int
var next_level_experience: int:
	get:
		return ceil(1.1 ** level)

func level_up():
	level += 1

func start_game(load_file = null):
	if (load_file):
		print("Loading Game File: ", load_file)
		# load file and use previously saved data if available
		pass
	else:
		title = "New Player"
		inventory = PlayerInventory.new()
		money = 1000
		level = 1
		current_experience = 0
