class_name Lime extends BaseCondiment

func _init():
	super()
	title = "Lime"
	description = "Lime-y condiment"
	icon = "res://icon.svg"
	
	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
