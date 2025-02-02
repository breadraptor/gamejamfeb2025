/// @description hey
hsp = 0;
vsp = 0;
tilemap = layer_tilemap_get_id("Tiles_Collision");
tilemap_int = layer_tilemap_get_id("Tiles_Interaction");
facing = "right"; // TODO this should be an enum but i'm too lazy to replace it
interaction_tile_id = -1;