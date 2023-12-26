class_name CreminiMushrooms extends Food

func _init():
	title = "Cremini Mushrooms"
	description = "Delicious Cremini Mushrooms"
	icon = "res://icon.svg"
	
	type = FoodType.Vegetable

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
