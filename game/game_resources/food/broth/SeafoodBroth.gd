class_name SeafoodBroth extends BaseBroth

func _init():
	super()
	title = "Seafood Broth"
	description = "Delicious Seafood Broth"
	icon = "res://icon.svg"

	base_cost = 300

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 15

	base_quality = 2
