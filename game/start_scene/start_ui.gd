extends CenterContainer

func _ready():
	_set_pane(1)

func _set_pane(p_no):
	$MainMenu.visible = p_no == 1

func _on_exit_btn_pressed():
	get_tree().quit()

func _on_normal_btn_pressed():
	GameState.new_game(GameState.GameDifficulty.GAME_NORMAL)
