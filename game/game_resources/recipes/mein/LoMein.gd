class_name LoMeinRecipe extends Recipe

func _init():
	title = "Lo Mein"
	description = "Delicious lo mein"
	
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
