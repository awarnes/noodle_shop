class_name BonitoFlakes extends Food

func _init():
	title = "Bonito Flakes"
	description = "Bonito-y condiment"
	icon = "res://icon.svg"
	
	type = FoodType.Condiment

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	preparation_methods = []

	base_quality = 1
