class_name Basil extends Food

func _init():
	title = "Basil"
	description = "Delicious Basil"
	icon = "res://icon.svg"
	
	type = FoodType.Vegetable

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
