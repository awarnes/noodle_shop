class_name DepartmentStoreScreenData extends BaseSelectionScreenData

func _init():
	title = "Department Store"
	background = null
	
	var cooking_tools: Array[BaseCookingTool] = [
		HomeDeepFryer.new(),
		HobbyistDeepFryer.new(),
		CommercialGasFryer.new(),
		CommercialElectricFryer.new(),
		CopperOven.new(),
		SilverOven.new(),
		GoldOven.new(),
		CopperPan.new(),
		SilverPan.new(),
		GoldPan.new(),
		CopperPot.new(),
		SilverPot.new(),
		GoldPot.new(),
		CopperStove.new(),
		SilverStove.new(),
		GoldStove.new(),
		CopperUtensil.new(),
		SilverUtensil.new(),
		GoldUtensil.new(),
	]
	
	var prep_tools: Array[BasePrepTool] = [
		CopperCuttingBoard.new(),
		SilverCuttingBoard.new(),
		GoldCuttingBoard.new(),
		CopperKnife.new(),
		SilverKnife.new(),
		GoldKnife.new(),
		CopperPeeler.new(),
		SilverPeeler.new(),
		GoldPeeler.new(),
		CopperRiceCooker.new(),
		SilverRiceCooker.new(),
		GoldRiceCooker.new(),
		CopperScale.new(),
		SilverScale.new(),
		GoldScale.new(),
	]
	var groups = {}
	
	for cooking_tool in cooking_tools:
		var tool_type = BaseCookingTool.new().get_tool_name(cooking_tool.type)
		if groups.has(tool_type):
			groups[tool_type].append(SelectionItemData.new(cooking_tool))
		else:
			groups[tool_type] = [SelectionItemData.new(cooking_tool)]
	
	
	for prep_tool in prep_tools:
		var tool_type = BasePrepTool.new().get_tool_name(prep_tool.type)
		if groups.has(tool_type):
			groups[tool_type].append(SelectionItemData.new(prep_tool))
		else:
			groups[tool_type] = [SelectionItemData.new(prep_tool)] 
	
	
	for group_key in groups.keys():
		selection_groups.append(SelectionGroupData.new(group_key, groups[group_key]))
