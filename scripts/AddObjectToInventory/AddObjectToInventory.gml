object = argument0;

ds_list_add(obj_inventory.items,object);
layer_add_instance("Inventory_Layer", object);
object.depth--;
object.collider = noone;
object.inInventory = true;
obj_inventory.hasChanged = true;