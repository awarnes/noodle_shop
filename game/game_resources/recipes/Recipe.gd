class_name Recipe extends GameResource

@export var level_req: int
@export var cost: int

@export var base_selling_price: int

# Ingredients
@export var noodles: BaseNoodle
@export var broth: BaseBroth
@export var condiments: Array[BaseCondiment]
@export var meats: Array[BaseMeat]
@export var vegetables: Array[BaseVegetable]

func get_ingredients() -> Array[Food]:
	var ingredients = []
	ingredients.append(noodles)
	ingredients.append(broth)
	for condiment in condiments:
		ingredients.append(condiment)
	for meat in meats:
		ingredients.append(meat)
	for vegetable in vegetables:
		ingredients.append(vegetable)
	
	return ingredients

func calculate_selling_price(used_ingredients: Array[Food]):
	var price: int = base_selling_price
	for ingredient: Food in used_ingredients:
		price += ingredient.get_price_bonus()
	return price

func is_available():
	for ingredient: Food in Player.stock:
		if not ingredient.is_available():
			return false
	return true
