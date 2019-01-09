var effect_x = argument0;
var effect_y = argument1;

effect_create_above(ef_spark, effect_x - 30, effect_y - 40, 0, c_yellow);
effect_create_above(ef_spark, effect_x + 40, effect_y + 30 , 0, c_yellow);
effect_create_above(ef_spark, effect_x - 34, effect_y + 20, 1, c_yellow);
effect_create_above(ef_spark, effect_x + 20, effect_y - 20, 1, c_yellow);
effect_create_above(ef_spark, effect_x, effect_y, 2, c_yellow);