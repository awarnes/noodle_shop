class_name RamenNoodleSoup extends BaseRecipe

func _init():
	title = "Ramen Noodle Soup"
	description = "Delicious ramen noodles in a tasty broth"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, RamenNoodles.new()),
		BrothIngredient.new(BaseIngredient.Requirement.Required),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		SauceIngredient.new(BaseIngredient.Requirement.Optional),
		SauceIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationBoil.new(),
	]
