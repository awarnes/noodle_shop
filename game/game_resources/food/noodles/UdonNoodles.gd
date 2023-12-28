class_name UdonNoodles extends BaseNoodle

func _init():
	super()
	title = "Udon Noodles"
	description = "Delicious Udon Noodles"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
