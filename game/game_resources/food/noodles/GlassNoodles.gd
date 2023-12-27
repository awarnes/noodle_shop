class_name GlassNoodles extends BaseNoodle

func _init():
	title = "Glass Noodles"
	description = "Delicious Glass Noodles"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new(),
	]

	base_quality = 1
