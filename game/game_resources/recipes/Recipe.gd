class_name Recipe extends GameResource

@export var level_req: int
@export var cost: int

@export var ingredients: Array[BaseIngredient]
@export var preparation_methods: Array[PreparationMethod]

func can_make_recipe():
	for ingredient: BaseIngredient in ingredients:
		if ingredient.requirement == BaseIngredient.Requirement.Required and \
			not ingredient.is_available():
				return false
	
	for method in preparation_methods:
		if method.required_method:
			for cooking_tool in method.required_cooking_tools:
				if not Player.inventory.has_tool_type(cooking_tool):
					return false
			for prep_tool in method.required_prep_tools:
				if not Player.inventory.has_tool_type(prep_tool):
					return false
	return true
