// Snap the object to the top-left of the camera
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

// Scale the instance so the sprite fills the camera
image_xscale = camera_get_view_width(view_camera[0]) / sprite_width;
image_yscale = camera_get_view_height(view_camera[0]) / sprite_height;