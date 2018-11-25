object = argument0;

object.x = obj_inventory.x + 65 + (obj_inventory.i * 115);
object.y = obj_inventory.y + obj_inventory.sprite_height / 2;
obj_inventory.items[obj_inventory.i++] = object;
obj_inventory.image_index = obj_inventory.i;
layer_add_instance("Inventory_Layer", object);
object.depth--;
object.collider = noone;
object.inInventory = true;