class_name PhoRecipe extends Recipe

func _init():
	title = "Pho"
	description = "Rice noodles in a delicious beef broth"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, VermicelliNoodles.new()),
		BrothIngredient.new(BaseIngredient.Requirement.Required, BeefBroth.new()),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		SauceIngredient.new(BaseIngredient.Requirement.Required, PlumbSauce.new()),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional, RedChiliFlakes.new()),
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationBoil.new(),
	]
