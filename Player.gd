extends Node

var player_udp := PacketPeerUDP.new()
var is_runned := false

func _process(_delta):
	if is_runned:
		if player_udp.get_available_packet_count() > 0:
			var s_data = player_udp.get_packet().get_string_from_utf8()
			
	pass
	
func _player_run():
	player_udp.connect_to_host("127.0.0.1", 4242)
	is_runned = true
	player_udp.put_packet("DATA FROM CLIENT".to_utf8_buffer())
	pass
	



func _on_button_3_pressed():
	_player_run()
	pass # Replace with function body.
