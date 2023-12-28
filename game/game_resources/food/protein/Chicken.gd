class_name Chicken extends BaseProtein

func _init():
	title = "Chicken"
	description = "Delicious Chicken"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
