class_name RedChiliFlakes extends BaseCondiment

func _init():
	super()
	title = "Red Chili Flakes"
	description = "Red Chili Flake-y condiment"
	icon = "res://icon.svg"
	
	sub_type = CondimentSubType.Dry

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	preparation_methods = []

	base_quality = 1
