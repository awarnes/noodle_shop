class_name BaseIngredient extends GameResource

enum Requirement {
	Optional,
	Required,
}

func get_required_display(requirement: Requirement) -> String:
	match requirement:
		Requirement.Optional:
			return "Optional"
		Requirement.Required:
			return "Required"
	return ""

@export var type: Food.FoodType
@export var food: Food
@export var requirement: Requirement

func _init(ingredient: Food = null, status: Requirement = Requirement.Optional):
	food = ingredient
	requirement = status

func get_display() -> Array[Node]:
	var helper = Helpers.new()
	var display: Array[Node] = [
		helper.create_label("Type: %s" % Food.new().get_food_name(type)),
		helper.create_label("Required: %s" % get_required_display(requirement)),
	]
	
	if not food == null:
		display.append(helper.create_label("Food: %s" % food.title))

	return display

func is_available() -> bool:
	return Player.stock.has_food(food) or Player.stock.has_food_type(type)
	
