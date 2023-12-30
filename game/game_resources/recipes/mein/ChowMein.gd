class_name ChowMeinRecipe extends BaseRecipe

func _init():
	title = "Chow Mein"
	description = "Delicious chow mein"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, ChowMeinNoodles.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SesameOil.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Optional),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new(),
	]
