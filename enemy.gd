extends CharacterBody2D

@onready var player = get_node("/root/Game/Player")

var health = 3

func _ready():
	%Slime.play_walk()

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction*400
	move_and_slide()
	
func take_damage():
	%Slime.play_hurt()
	health -= 1
	
	if health <= 0:
		const SMOKE_SCN = preload("res://smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_SCN.instantiate()
		get_parent().add_child(smoke)
		smoke.global_position = global_position
		
		queue_free()
