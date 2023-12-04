extends Control

func _on_quit_button_pressed():
	get_tree().quit()

func _on_settings_button_pressed():
	Global.goto_scene("res://menus/settings_menu/SettingsMenu.tscn")

func _on_play_button_pressed():
	Global.goto_scene("res://game/Planning.tscn")
