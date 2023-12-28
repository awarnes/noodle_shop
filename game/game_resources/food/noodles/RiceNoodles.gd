class_name RiceNoodles extends BaseNoodle

func _init():
	super()
	title = "Rice Noodles"
	description = "Medium sized rice noodles"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 30

	base_quality = 1
