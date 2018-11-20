object = argument0;

var j;
for(j = 0; j < obj_inventory.i; ++j) {
	if(obj_inventory.items[j].id == object.id)
		break;
}
	
object.x = obj_inventory.x + 65 + (j * 115);
object.y = obj_inventory.y + obj_inventory.sprite_height / 2;
