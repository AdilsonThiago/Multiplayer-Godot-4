extends Control

func _ready():
	Networking.lista_alterada.connect(self.lista_alterada)
	pass

func _on_criar_pressed():
	Networking.atualizar_nome($NomeEdit.text)
	Networking.criar_servidor()
	pass

func _on_conectar_pressed():
	Networking.atualizar_ip($IpEdit.text)
	Networking.atualizar_nome($NomeEdit.text)
	Networking.entrar_servidor()
	pass

func lista_alterada():
	var lista = Networking.retornar_lista()
	$ListaJogadores.clear()
	for i in range(lista.size()):
		$ListaJogadores.add_item(lista[i][1])
	pass
