class_name RamenNoodles extends BaseNoodle

func _init():
	title = "Ramen Noodles"
	description = "Delicious Ramen Noodles"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30


	base_quality = 1
