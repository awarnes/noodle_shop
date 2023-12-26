class_name UdonNoodles extends Food

func _init():
	title = "Udon Noodles"
	description = "Delicious Udon Noodles"
	icon = "res://icon.svg"
	
	type = FoodType.Noodle

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new(),
	]

	base_quality = 1
