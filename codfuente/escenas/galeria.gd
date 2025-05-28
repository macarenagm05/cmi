extends Node2D

var elementos = [
	"res://assetsgaleria/genyagaleria.JPG",
	"res://assetsgaleria/zoyagaleria.JPG",
	"res://assetsgaleria/coffeegaleria.JPG",
	"res://videogaleria.ogv"
]


var indice = 0


func _ready():
	mostrar_elemento()
	$musicafondo.stream.loop = true
	$musicafondo.play()

func _on_botonsiguiente_pressed():
	$sonidoboton.play()
	indice += 1
	if indice>= elementos.size():
		indice = 0 #vuelve al primero
	mostrar_elemento()

func _on_botonanterior_pressed():
	$sonidoboton.play()
	indice -= 1
	if indice < 0:
		indice = elementos.size() - 1
	mostrar_elemento()



func mostrar_elemento():
	var ruta = elementos[indice]
	
	if ruta.ends_with(".ogv"):
		$TextureRect.visible = false
		$VideoStreamPlayer.visible = true
		$VideoStreamPlayer.stream = load(ruta)
		$VideoStreamPlayer.play()
	else:
		$VideoStreamPlayer.visible = false
		$VideoStreamPlayer.stop()
		$TextureRect.visible = true
		$TextureRect.texture = load (ruta)


func _on_botonmenu_pressed() -> void:
	$sonidoboton.play()
	await get_tree().create_timer(0.8).timeout #Espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/menu.tscn")
