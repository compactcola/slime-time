extends Node2D

func spawn_mob():
	var new_mob = preload("res://enemy.tscn").instantiate()
	var quick_rand = randf()
	
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	
	if quick_rand >= 0.80:
		new_mob.is_quick = true

	add_child(new_mob)
	
	
func _on_timer_timeout() -> void:
	spawn_mob()


func _on_player_health_depleted() -> void:
	%GameOver.show()
	get_tree().paused = true
