class_name Watermelon extends BaseFruit

func _init():
	super()
	title = "Watermelon"
	description = "Watery melon"
	icon = "res://icon.svg"

	base_cost = 450

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 3

	base_quality = 1
