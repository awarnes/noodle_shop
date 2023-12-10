class_name FoodScreenData extends BaseSelectionScreenData

func _init():
	title = "Food Market"
	background = null
	selection_groups = [
		SelectionGroupData.new("Fruit", [SelectionItemData.new(Watermelon.new()),]),
		#SelectionGroupData.new("Meat And Protein", [SelectionItemData.new("Pork Chops", "Choppy Pork", "res://icon.svg", null),]),
		#SelectionGroupData.new("Miscellaneous", [SelectionItemData.new("Gary", "Indiana", "res://icon.svg", null),])
	]
