extends Node2D

var velocidade = 70
var nickname = ""

func _process(delta):
	if is_multiplayer_authority():
		var axys = Vector2.ZERO
		if Input.is_action_pressed("b_direita"):
			axys += Vector2(1 , 0)
		if Input.is_action_pressed("b_esquerda"):
			axys += Vector2(-1 , 0)
		if Input.is_action_pressed("b_cima"):
			axys += Vector2(0 , -1)
		if Input.is_action_pressed("b_baixo"):
			axys += Vector2(0 , 1)
		position += axys * velocidade * delta
	pass

func set_nickname(nickname):
	self.nickname = nickname
	$NicknameLabel.text = nickname
	pass
