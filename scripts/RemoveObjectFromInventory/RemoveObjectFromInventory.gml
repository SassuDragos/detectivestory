toRemove = argument0;

var found = false;
var limit = obj_inventory.i;
for(var j = 0; j < limit; ++j) {
	if(found) {
		var obj = obj_inventory.items[j];
		obj_inventory.items[j-1] = obj;
		obj_inventory.items[j] = noone;
		obj.x -= 115;
	} else if(obj_inventory.items[j].id == toRemove.id) {
		obj_inventory.i--;
		obj_inventory.image_index = obj_inventory.i;
		obj_inventory.items[j] = noone;
		instance_destroy(toRemove);
		found = true;
	}
}