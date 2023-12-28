class_name VermicelliNoodles extends BaseNoodle

func _init():
	super()
	title = "Vermicelli Noodles"
	description = "Delicious thin noodles made from rice"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
