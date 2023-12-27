class_name Pineapple extends BaseFruit

func _init():
	title = "Pineapple"
	description = "Pineapple-y fruit"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 2

	preparation_methods = [
		PreparationChop.new()
	]

	base_quality = 1
