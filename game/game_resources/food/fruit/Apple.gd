class_name Apple extends BaseFruit

func _init():
	super()
	title = "Apple"
	description = "Apple-y fruit"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 2

	base_quality = 1
