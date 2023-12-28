class_name RedChiliFlakes extends BaseCondiment

func _init():
	super()
	title = "Red Chili Flakes"
	description = "Red Chili Flake-y condiment"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
