extends CenterContainer

@onready var save_list_node = $LoadGame/SaveList
var save_list : Array

func _ready():
	_set_pane(1)
	if PersistentWorld.instance:
		save_list = PersistentWorld.instance.list_saves()
		save_list_node.clear()
		for entry in save_list:
			save_list_node.add_item(entry)

func _set_pane(p_no):
	$MainMenu.visible = p_no == 1
	$Options.visible = p_no == 2

func _on_exit_btn_pressed():
	get_tree().quit()

func _on_normal_btn_pressed():
	GameState.new_game(GameState.GameDifficulty.GAME_NORMAL)
