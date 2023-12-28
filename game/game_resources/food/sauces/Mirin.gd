class_name Mirin extends BaseSauce

func _init():
	super()
	title = "Mirin"
	description = "Sweet Rice Cooking Wine"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
