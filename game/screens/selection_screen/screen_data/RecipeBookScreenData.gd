class_name RecipeBookScreenData extends BaseSelectionScreenData

func _init():
	title = "Recipe Book"
	background = null
	
	var recipes = {
		"Fried Noodles": [
			SelectionItemData.new(ChowMeinRecipe.new()),
			SelectionItemData.new(LoMeinRecipe.new()),
			SelectionItemData.new(PadSeeEw.new()),
			SelectionItemData.new(PadThai.new()),
			SelectionItemData.new(YakiSoba.new()),
			SelectionItemData.new(YakiUdonRecipe.new()),
		],
		"Noodle Soups": [
			SelectionItemData.new(PhoRecipe.new()),
			SelectionItemData.new(RamenNoodleSoup.new()),
			SelectionItemData.new(UdonNoodleSoup.new()),
		],
		"Cold Noodles": [
			SelectionItemData.new(ZaruSoba.new()),
		],
	}
	
	for group_key in recipes.keys():
		selection_groups.append(SelectionGroupData.new(group_key, recipes[group_key]))
