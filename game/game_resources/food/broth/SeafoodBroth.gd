class_name SeafoodBroth extends Food

func _init():
	title = "Seafood Broth"
	description = "Delicious Seafood Broth"
	icon = "res://icon.svg"
	
	type = FoodType.Broth

	base_cost = 300

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 15

	preparation_methods = [
		PreparationBoil.new()
	]

	base_quality = 2
