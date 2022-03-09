extends Label

var time = 300
var timer_on = false
	
func _process(delta):
	if(timer_on):
		time -= delta
		
		var secs = fmod(time,60)
		var mins = fmod(time, 60*60) / 60
		
		var time_passed = "%02d : %02d" % [mins,secs]
		text = time_passed
	if time == 0:
		var _change_scene = get_tree().change_scene("res://scenes/bunker.tscn")

func _on_start_pressed():
	timer_on = true
	pass # Replace with function body.
