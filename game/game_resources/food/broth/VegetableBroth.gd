class_name VegetableBroth extends Food

func _init():
	title = "Vegetable Broth"
	description = "Delicious Vegetable Broth"
	icon = "res://icon.svg"
	
	type = FoodType.Broth

	base_cost = 100

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 20

	preparation_methods = [
		PreparationBoil.new()
	]

	base_quality = 1
