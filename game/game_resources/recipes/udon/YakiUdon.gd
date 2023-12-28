class_name YakiUdonRecipe extends Recipe

func _init():
	title = ""
	description = "Delicious fat udon noodles in a tasy broth"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, UdonNoodles.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SesameOil.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Allowed),
		ProteinIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		CondimentIngredient.new(BaseIngredient.Requirement.Allowed),
		CondimentIngredient.new(BaseIngredient.Requirement.Allowed)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new()
	]
