class_name GameOver extends CanvasLayer

@onready var score: Label = %ScoreLabel
@onready var restart: Button = %RestartButton
@onready var quit: Button = %QuitButton

func set_score(n:int):
	score.text = "Final Score: " + str(n)
	# todo - high score logic and saving

func _on_restart_button_pressed() -> void:
	$sonidobotongameover.play()
	await get_tree().create_timer(2.5).timeout #Espera 2.5 segundos
	get_tree().reload_current_scene()


func _on_quit_button_pressed() -> void:
	$sonidobotongameover.play()
	await get_tree().create_timer(2.5).timeout #Espera 2.5 segundos
	get_tree().change_scene_to_file("res://escenas/menu.tscn")

func _notification(what):
	match what:
		NOTIFICATION_ENTER_TREE:
			get_tree().paused = true
		NOTIFICATION_EXIT_TREE:
			get_tree().paused = false
			
