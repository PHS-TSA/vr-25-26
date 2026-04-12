extends Area3D

func _on_body_entered(body: Node3D) -> void:
	if body is XRToolsPlayerBody:
		if get_parent().name != "Wanderer":
			body.position = Vector3(0,0.1,0)
		else:
			body.position = Vector3(0,2.24,1.69)
