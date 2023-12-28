class_name Recipe extends GameResource

@export var level_req: int
@export var cost: int

@export var ingredients: Array[BaseIngredient]
@export var preparation_methods: Array[BasePreparationMethod]

func get_attributes_display() -> Array[Node]:
	var helper = Helpers.new()
	var display_attributes: Array[Node] = [
		helper.create_label("Title: %s" % title),
		helper.create_label("Description: %s" % description),
		helper.create_label("Level Requirement: %d" % level_req),
		helper.create_label("Cost: %d" % cost),
		helper.create_label("Ingredients:"),
	]
	
	display_attributes.append_array(get_ingredient_display())
	display_attributes.append(helper.create_label("Preparation Methods:"))
	display_attributes.append_array(get_preparation_method_display())
	
	return display_attributes

func get_ingredient_display() -> Array[Node]:
	var display_ingredients: Array[Node] = []
	for ingredient in ingredients:
		display_ingredients.append_array(ingredient.get_display())
	return display_ingredients

func get_preparation_method_display() -> Array[Node]:
	var display_methods: Array[Node] = []
	for method in preparation_methods:
		display_methods.append_array(method.get_display())
	return display_methods

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
