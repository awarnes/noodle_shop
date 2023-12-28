class_name SenYaiNoodles extends BaseNoodle

func _init():
	super()
	title = "Sen Yai Noodles"
	description = "Thai Wide Rice Noodles"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
