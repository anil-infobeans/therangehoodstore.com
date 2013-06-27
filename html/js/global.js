/**
 * Extracts a subset of an image specified in a class, then applies it as a tiled
 * background to a target image.
 * 
 * This function is especially useful for extracting a slice area from a sprite
 * that is going to be used as a repeated background
 * 
 * @author Leon McCottry, Software-Creation.com
 * 
 * @param target    the element where the subset image will be tiled.
 * 					must have a data-targetClass attribute defined which declares 
 * 					a class name that must have a background-image, background-position, 
 * 					width, and height specified
 *  
 * 
 */
function set_sub_image_background(target, useHover) {
	
	var tClass = (useHover) ? "data-targetClass-Hover": "data-targetClass";

	var temp = jQuery('<temp class="'+target.getAttribute(tClass)+'"/>').hide().appendTo("body");

	var background_position = temp.css("background-position").split(" ");
	
	var x = parseInt(background_position[0]);
	var y = parseInt(background_position[1]);

	var width = parseInt(temp.css("width"));
	var height = parseInt(temp.css("height"));
	
	var img_src = temp.css("background-image").replace("url(","").replace(")","").replace(/"/g,"");
	var image = new Image();
	image.src = img_src;
	
	image.onload = function() {
		processImage(image, x, y, width, height, target);
		jQuery(temp).remove();
	}
	
}

function processImage(image, x, y, width, height, target) {
	var canvas = document.createElement('canvas');
	canvas.width = width;
	canvas.height = height;
	
	x_pos  = image.width + x;
	y_pos = image.height + y;
	
	var context = canvas.getContext("2d");

	context.drawImage(image, -x, -y, width, height, 0, 0, width, height );
	
	target.style.backgroundImage = "url('"+canvas.toDataURL("image/png")+"')";
}