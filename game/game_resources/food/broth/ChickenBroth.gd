class_name ChickenBroth extends BaseBroth

func _init():
	title = "Chicken Broth"
	description = "Delicious Chicken Broth"
	icon = "res://icon.svg"

	base_cost = 200

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
