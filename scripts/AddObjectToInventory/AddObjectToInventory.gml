x = obj_inventory.x + 65 + (obj_inventory.i * 115);
y = obj_inventory.y + obj_inventory.sprite_height / 2;
obj_inventory.items[obj_inventory.i++] = self;
obj_inventory.image_index = obj_inventory.i;
if(layer_exists("Inventory")) {
	layer_add_instance("Inventory", self);
	self.depth--;
}
collider = noone;
inInventory = true;