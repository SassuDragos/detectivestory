switch(argument0) {
	case 3: switch(argument1) {
				case "up": return spr_detective_walking_up;
				case "down": return spr_detective_walking_down;
				case "right": image_xscale = -1; return spr_detective_walking_left;
				case "left": image_xscale = 1; return spr_detective_walking_left;
			}
	case 6: switch(argument1) {
				case "up": return spr_detective_running_up;
				case "down": return spr_detective_running_down;
				case "right": image_xscale = -1; return spr_detective_running_left;
				case "left": image_xscale = 1; return spr_detective_running_left;
			}
}