class_name PadSeeEw extends Recipe

func _init():
	title = "Pad See Ew"
	description = "Delicious wide sen yai rice noodles fried with soy sauce"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, SenYaiNoodles.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SoySauce.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SesameOil.new()),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Required, Broccoli.new()),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional)
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new(),
	]
