class_name PlayerInventory extends Resource

@export_category("Food")
@export var provisions: Array[Food]
@export var recipes: Array[BaseRecipe]
@export var menu: Array[BaseMenuItem]

func has_food(food: Food):
	return provisions.any(func(provision): return provision.title == food.title)
	
func has_food_type(foodType: Food.FoodType): 
	return provisions.any(func(provision): return provision.type == foodType)

func get_food(food: Food):
	var filteredProvisions = provisions.filter(func(provision): return provision.title == food.title)
	filteredProvisions.sort_custom(sort_by_age)
	return filteredProvisions[0]

func get_food_by_type(foodType: Food.FoodType):
	var filteredProvisions = provisions.filter(func(provision): return provision.type == foodType)
	filteredProvisions.sort_custom(sort_by_age)
	return filteredProvisions[0]

func sort_by_age(food1: Food, food2: Food):
	if food1.age > food2.age:
		return true
	return false

func has_recipe(recipe: BaseRecipe):
	return recipes.any(func(rec): return rec.title == recipe.title)

