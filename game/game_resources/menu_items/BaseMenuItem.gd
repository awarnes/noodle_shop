class_name BaseMenuItem extends GameResource

@export var price: int
@export var recipe: BaseRecipe

func _init():
	resource_type = ResourceType.MenuItem

func get_suggested_price():
	# Returns the suggested price of the given menu item
	pass
