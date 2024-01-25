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
		upgrades = PlayerUpgrades.new()
		money = 1000
		level = 1
		current_experience = 0

func purchase_item(resource: GameResource):
	if resource.cost:
		money -= resource.cost
	
	match resource.resource_type:
		GameResource.ResourceType.CookingTool:
			upgrades.cooking_tools.push_back(resource)
			return
		GameResource.ResourceType.Food:
			inventory.provisions.push_back(resource)
			return
		GameResource.ResourceType.MenuItem:
			inventory.menu.push_back(resource)
			return
		GameResource.ResourceType.PrepTool:
			upgrades.prep_tools.push_back(resource)
			return
		GameResource.ResourceType.Recipe:
			inventory.recipes.push_back(resource)
			return
		GameResource.ResourceType.Storage:
			upgrades.storage.push_back(resource)
			return
