extends VBoxContainer

@export var label:Label
@export var delay := 1.0

var value := 0
var delay_counter := 0.0


func _process(delta):
	delay_counter += delta
	if delay_counter >= delay:
		delay_counter = 0.0
		value += 1
	label.text = str(value)


func _on_reset_button_pressed():
	delay_counter = 0.0
	value = 0
