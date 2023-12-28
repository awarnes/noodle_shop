class_name VegetableBroth extends BaseBroth

func _init():
	super()
	title = "Vegetable Broth"
	description = "Delicious Vegetable Broth"
	icon = "res://icon.svg"

	base_cost = 100

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 20

	base_quality = 1
