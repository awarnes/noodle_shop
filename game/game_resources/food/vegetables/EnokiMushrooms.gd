class_name EnokiMushrooms extends Food

func _init():
	title = "Enoki Mushrooms"
	description = "Delicious Enoki Mushrooms"
	icon = "res://icon.svg"
	
	type = FoodType.Vegetable

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
