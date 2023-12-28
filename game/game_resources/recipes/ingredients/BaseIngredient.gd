class_name BaseIngredient extends GameResource

enum Requirement {
	NotAllowed,
	Allowed,
	Required,
}

@export var type: Food.FoodType
@export var food: Food
@export var requirement: Requirement

func _init(ingredient: Food = null, status: Requirement = Requirement.Allowed):
	food = ingredient
	requirement = status

func is_available() -> bool:
	return Player.stock.has_food(food) or Player.stock.has_food_type(type)
	
