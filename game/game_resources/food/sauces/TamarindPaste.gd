class_name TamarindPaste extends BaseSauce

func _init():
	super()
	title = "Tamarind Paste"
	description = "Sweet and sour tamarind paste"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
