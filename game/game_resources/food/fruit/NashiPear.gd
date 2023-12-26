class_name NashiPear extends Food

func _init():
	title = "Nashi Pear"
	description = "Nashi Pear-y fruit"
	icon = "res://icon.svg"
	
	type = FoodType.Fruit

	base_cost = 150

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 2

	preparation_methods = [
		PreparationChop.new()
	]

	base_quality = 1

