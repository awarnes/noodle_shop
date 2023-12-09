class_name Recipe extends Resource

@export var title: String
@export var level_req: int
@export var cost: int

@export var icon: Image
@export var description: String

@export var base_selling_price: int
@export var ingredients: Array[Food]

@export var learned: bool
@export var available: bool

func calculate_selling_price(used_ingredients: Array[Food]):
	var price: int = base_selling_price
	for ingredient: Food in used_ingredients:
		price += ingredient.get_price_bonus()
	return price

func is_available(stock: Array[Food]):
	if not available:
		return false
	for ingredient: Food in stock:
		if not ingredient.is_available():
			return false
	return true
