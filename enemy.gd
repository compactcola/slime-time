extends CharacterBody2D

@onready var player = get_node("/root/Game/Player")

var health = 2
var speed = 400
var is_quick = false


func _ready():
	%Slime.play_walk()
	if is_quick:
		health = 1
		speed = 800
		scale = Vector2(0.75,0.75)

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	
	velocity = direction*speed

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
		
