class_name BeefBroth extends Food

func _init():
	title = "Beef Broth"
	description = "Delicious Beef Broth"
	icon = "res://icon.svg"
	
	type = FoodType.Broth

	base_cost = 200

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new()
	]

	base_quality = 1
