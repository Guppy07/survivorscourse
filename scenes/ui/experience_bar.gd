extends CanvasLayer
@export var experience_manager: Node
@onready var progress_var = $MarginContainer/ProgressBar


func _ready():
	progress_var.value = 0
	experience_manager.experience_updated.connect(on_experience_updated)
	
	
func on_experience_updated(current_experience: float, target_experience: float):
	var percent = current_experience / target_experience
	progress_var.value = percent
	
	
	
