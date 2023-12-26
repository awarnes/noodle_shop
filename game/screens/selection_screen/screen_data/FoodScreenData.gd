class_name FoodScreenData extends BaseSelectionScreenData

func _init():
	title = "Food Market"
	background = null
	
	var food: Array[Food] = [
		BeefBroth.new(),
		ChickenBroth.new(),
		SeafoodBroth.new(),
		VegetableBroth.new(),
		BonitoFlakes.new(),
		FishSauce.new(),
		PlumbSauce.new(),
		RedChiliFlakes.new(),
		SesameOil.new(),
		SesameSeeds.new(),
		SoySauce.new(),
		Apple.new(),
		Mango.new(),
		NashiPear.new(),
		Orange.new(),
		Pineapple.new(),
		Plumb.new(),
		Watermelon.new(),
		Beef.new(),
		Chicken.new(),
		Clams.new(),
		Pork.new(),
		Shrimp.new(),
		Tempeh.new(),
		Tofu.new(),
		ChowMeinNoodles.new(),
		GlassNoodles.new(),
		RamenNoodles.new(),
		RiceNoodles.new(),
		SobaNoodles.new(),
		UdonNoodles.new(),
		Basil.new(),
		Broccoli.new(),
		Carrots.new(),
		CreminiMushrooms.new(),
		EnokiMushrooms.new(),
		Garlic.new(),
		GreenCabbage.new(),
		GreenOnion.new(),
		GreenPepper.new(),
		MorelMushrooms.new(),
		OysterMushrooms.new(),
		Potato.new(),
		RedCabbage.new(),
		RedPepper.new(),
		ShitakeMushrooms.new(),
		SweetPea.new(),
		YellowOnion.new()
	]
	
	var groups = {}
	
	for food_item in food:
		var food_type = Food.new().get_food_type(food_item.type)
		if groups.has(food_type):
			groups[food_type].append(SelectionItemData.new(food_item))
		else:
			groups[food_type] = [SelectionItemData.new(food_item)]
	
	for group_key in groups.keys():
		selection_groups.append(SelectionGroupData.new(group_key, groups[group_key]))
