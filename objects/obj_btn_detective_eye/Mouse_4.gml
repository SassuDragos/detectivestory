var l = layer_get_id("layer_bg_scene");
var l2 = layer_get_id("layer_disabled_items");
if(on) {
	layer_shader(l, -1);
	layer_shader(l2, -1);
} else {
	layer_shader(l, sha_bw);
	layer_shader(l2, sha_bw);
}
on = !on;