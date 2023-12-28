class_name UdonNoodleSoup extends Recipe

func _init():
	title = "Udon Noodle Soup"
	description = "Delicious fat udon noodles in a tasy broth"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, UdonNoodles.new()),
		BrothIngredient.new(BaseIngredient.Requirement.Required),
		ProteinIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		VegetableIngredient.new(BaseIngredient.Requirement.Allowed),
		CondimentIngredient.new(BaseIngredient.Requirement.Allowed),
		CondimentIngredient.new(BaseIngredient.Requirement.Allowed)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationBoil.new(),
	]
