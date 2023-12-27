class_name Ingredient extends GameResource

enum IngredientStatus {
	Allowed,
	Forbidden,
	Required,
}

@export var food: Food
@export var status: IngredientStatus
