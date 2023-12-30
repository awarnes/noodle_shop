class_name UdonNoodleSoup extends BaseRecipe

func _init():
	title = "Udon Noodle Soup"
	description = "Delicious fat udon noodles in a tasy broth"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, UdonNoodles.new()),
		BrothIngredient.new(BaseIngredient.Requirement.Required),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationBoil.new(),
	]
