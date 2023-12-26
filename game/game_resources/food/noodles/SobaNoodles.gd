class_name SobaNoodles extends Food

func _init():
	title = "Soba Noodles"
	description = "Delicious Soba Noodles"
	icon = "res://icon.svg"
	
	type = FoodType.Noodle

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new(),
		PreparationPanFry.new(),
	]

	base_quality = 1
