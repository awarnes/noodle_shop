class_name PadThai extends Recipe

func _init():
	title = "Pad Thai"
	description = "Delicious noodles fried with sauce"
	
	level_req = 1
	cost = 500
	
	ingredients = [
		NoodleIngredient.new(BaseIngredient.Requirement.Required, RiceNoodles.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SesameOil.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, FishSauce.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, SoySauce.new()),
		SauceIngredient.new(BaseIngredient.Requirement.Required, TamarindPaste.new()),
		ProteinIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Required, BeanSprouts.new()),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional),
		VegetableIngredient.new(BaseIngredient.Requirement.Optional, Cilantro.new()),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional, Peanuts.new()),
		CondimentIngredient.new(BaseIngredient.Requirement.Optional, Lime.new())
	]
	
	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new(),
	]
