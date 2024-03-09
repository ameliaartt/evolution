extends Node

var server_udp := UDPServer.new()
var is_runned := false

func _process(_delta):
	if is_runned:
		server_udp.poll()
		if server_udp.is_connection_available():
			var peer : PacketPeerUDP = server_udp.take_connection()
			var pkt = peer.get_packet()
			
			peer.put_packet("DATA FROM SERVER".to_utf8_buffer())
			peer.close
	pass
	
func _server_run():
	server_udp.listen(4242)
	is_runned = true
	pass
	


func _on_button_pressed():
	_server_run()
	pass # Replace with function body.
