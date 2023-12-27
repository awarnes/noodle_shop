class_name BeefBroth extends BaseBroth

func _init():
	title = "Beef Broth"
	description = "Delicious Beef Broth"
	icon = "res://icon.svg"

	base_cost = 200

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new()
	]

	base_quality = 1
