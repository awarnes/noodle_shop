class_name RecipeBookScreenData extends BaseSelectionScreenData

func _init():
	title = "Recipe Book"
	background = null
	
	var recipes: Array[Recipe] = [
	]
	
	var groups = {}
	
	for recipe in recipes:
		var recipe_type = Recipe.new().get__name(food_item.type)
		if groups.has(food_type):
			groups[food_type].append(SelectionItemData.new(food_item))
		else:
			groups[food_type] = [SelectionItemData.new(food_item)]
	
	for group_key in groups.keys():
		selection_groups.append(SelectionGroupData.new(group_key, groups[group_key]))
