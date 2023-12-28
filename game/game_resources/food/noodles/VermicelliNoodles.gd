class_name GlassNoodles extends BaseNoodle

func _init():
	super()
	title = "Glass Noodles"
	description = "Delicious Glass Noodles made from mung bean flour"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
