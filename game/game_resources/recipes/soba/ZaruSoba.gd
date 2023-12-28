class_name ZaruSoba extends Recipe

func _init():
	title = "Zaru Soba"
	description = "Delicious soba noodles in cold sauce"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, UdonNoodles.new()),
		BrothIngredient.new(BaseIngredient.Requirement.Required, ChickenBroth.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SoySauce.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, Mirin.new()),
		VegetableIngredient.new(BaseIngredient.Requirement.Required, GreenOnion.new()),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationBoil.new(),
	]
