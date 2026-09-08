extends CharacterBody2D

signal health_depleted

var health = 100.0

var stamina = 100.0
var run_mod = 1.0
var is_tired = false

var stamina_stylebox = StyleBoxFlat.new()

const DAMAGE_RATE = 10.0


@warning_ignore("unused_parameter")
func _physics_process(delta):
	%StaminaBar.value = stamina
	if Input.is_action_pressed("run") and not is_tired:
		run_mod = 2.0
		stamina -= 50 * delta
		
		## RAN OUT OF STAMINA 
		if stamina <= 0:
			is_tired = true
			stamina_stylebox.bg_color = Color.RED

	else:
		## REGAIN STAMINA
		run_mod = 1.0
		stamina += 30 * delta
		
	## RECHARGED STAMINA
	if stamina >= 90:
		is_tired = false
		stamina_stylebox.bg_color = Color.YELLOW
		
	%StaminaBar.add_theme_stylebox_override("fill", stamina_stylebox)
		
	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down")
	velocity = direction * 600 * run_mod
	move_and_slide()
	
	if velocity.length() > 0.0:
		%HappyBoo.play_walk_animation()
	else:
		%HappyBoo.play_idle_animation()
	
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%HealthBar.value = health
		
		if health <= 0.0:
			health_depleted.emit()
