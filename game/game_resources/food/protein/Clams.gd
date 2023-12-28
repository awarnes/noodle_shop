class_name Clams extends BaseProtein

func _init():
	super()
	title = "Clams"
	description = "Delicious Clams"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
